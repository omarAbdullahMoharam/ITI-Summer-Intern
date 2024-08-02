import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Lazy Loading Scrolling App"),
          ),
          body: const LazyLoadingGrid()),
    );
  }
}

class LazyLoadingGrid extends StatefulWidget {
  const LazyLoadingGrid({super.key});

  @override
  State<LazyLoadingGrid> createState() => _LazyLoadingGridState();
}

class _LazyLoadingGridState extends State<LazyLoadingGrid> {
  final List<String> _items = [];
  bool _isLoading = false;
  int _page = 0;
  final int _thrashold = 5;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadMore();
  }

//  scrollInfo.metrics.pixels  : The current scroll position in pixels
//  scrollInfo.metrics.viewportDimension : The current viewport dimension in pixels
//  scrollInfo.metrics.maxScrollExtent  : maximum scroll extent in pixels
//  _thrashold : limit for the scroll to be triggered

  Future<void> _loadMore() async {
    setState(() {
      _isLoading = true;
    });
    print("Featching Data");
    final response = await http.get(Uri.parse(
        "https://jsonplaceholder.typicode.com/posts?_start=${_page * 10}&_limit=10"));
    if (response.statusCode == 200) {
      List<dynamic> newItems = json.decode(response.body);

      setState(() {
        _page++;
        _isLoading = false;
        _items.addAll(newItems.map((item) => item['id'].toString()).toList());
      });
    } else {
      print("Failed to get data ");

      setState(() {
        _isLoading = false;
      });
      throw Exception('Failed to get data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        if (!_isLoading &&
            scrollInfo.metrics.pixels + scrollInfo.metrics.viewportDimension >=
                scrollInfo.metrics.maxScrollExtent - _thrashold) {
          _loadMore();
          return true;
        } else {
          return false;
        }
      },
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: _items.length + 1,
        itemBuilder: (context, index) {
          if (index == _items.length) {
            if (_isLoading) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return const SizedBox.shrink();
            }
          }

          return Card(
            child: Center(child: Text(_items[index])),
          );
        },
      ),
    );
  }
}
