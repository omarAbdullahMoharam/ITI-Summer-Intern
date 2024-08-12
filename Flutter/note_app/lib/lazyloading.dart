import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LazyLoading extends StatefulWidget {
  const LazyLoading({super.key});

  @override
  State<LazyLoading> createState() => _LazyLoadingState();
}

class _LazyLoadingState extends State<LazyLoading> {
  bool isLoading = false;
  int page = 0; // Start with the first page.
  int limit = 100; // Number of items per page.
  List<String> notes = [];

  Future<void> loadMore() async {
    if (isLoading) return; // Don't load if already loading

    setState(() {
      isLoading = true;
    });
    log('Loading more... Page: $page, Limit: $limit');
    try {
      final response = await http.get(
        Uri.parse(
            "https://jsonplaceholder.typicode.com/posts?_start=${page * limit}&_limit=$limit"),
      );

      if (response.statusCode == 200) {
        List<dynamic> fetchedNotes = jsonDecode(response.body);
        setState(() {
          notes.addAll(
              fetchedNotes.map((note) => note['title'].toString()).toList());
          isLoading = false;
          page++; // Increment page to load the next set of data.
        });
      } else {
        setState(() {
          isLoading = false;
        });
        log('Failed: ${response.body}');
        throw Exception('Failed to load data');
      }
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      log('Error: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    loadMore(); // Trigger the first load.
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        if (!isLoading &&
            scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
          loadMore();
          return true;
        }
        return false;
      },
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: notes.length + (isLoading ? 1 : 0),
        itemBuilder: (context, index) {
          if (index < notes.length) {
            return Card(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.all(10),
              elevation: 5,
              color: Colors.blue,
              child: Center(child: Text(notes[index])),
            );
          } else if (isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
