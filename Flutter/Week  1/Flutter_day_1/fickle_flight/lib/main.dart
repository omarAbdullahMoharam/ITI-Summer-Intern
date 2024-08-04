import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fickle_flight/screens/explore.dart'; // Make sure this path is correct

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
    return Scaffold(
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
              const CircleAvatar(
                child: Icon(
                  Icons.person,
                  size: 30,
                ),
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
        controller: _tabController,
        tabs: const [
          Tab(
            icon: Icon(CupertinoIcons.briefcase),
            text: 'Explore',
          ),
          Tab(
            icon: Icon(Icons.location_on_outlined),
            text: 'Booking',
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
    );
  }
}

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Booking'),
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

class Offers extends StatelessWidget {
  const Offers({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Offers'),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile'),
    );
  }
}
