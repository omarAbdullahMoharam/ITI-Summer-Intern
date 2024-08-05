import 'package:fickle_flight/screens/booking_screen.dart';
import 'package:fickle_flight/screens/offers_screen.dart';
import 'package:fickle_flight/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fickle_flight/screens/explore_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1262AE)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 50),
                Image.asset(
                  'assets/appBar.png',
                  height: 180,
                  width: 230,
                ),
                const SizedBox(width: 35),
                CircleAvatar(
                  radius: 18,
                  child: Image.asset('assets/CircleAvatar.png'),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            Explore(),
            Booking(),
            Search(),
            Offers(),
            Profile(),
          ],
        ),
        bottomNavigationBar: TabBar(
          labelStyle: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          labelColor: const Color(0xff1262AE),
          indicatorColor: const Color(0xff1262AE),
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(CupertinoIcons.briefcase),
              text: 'Explore',
            ),
            Tab(
              icon: Icon(Icons.location_on_outlined),
              text: 'Bookings',
            ),
            Tab(
              icon: Icon(CupertinoIcons.airplane),
              text: 'Search',
            ),
            Tab(
              icon: Icon(Icons.local_offer_outlined),
              text: 'Offers',
            ),
            Tab(
              icon: Icon(CupertinoIcons.person),
              text: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Search'),
    );
  }
}
