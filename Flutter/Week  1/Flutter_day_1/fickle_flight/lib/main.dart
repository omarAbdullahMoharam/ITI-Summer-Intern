import 'package:fickle_flight/components/custom_listtile.dart';
import 'package:fickle_flight/screens/booking_screen.dart';
import 'package:fickle_flight/screens/offers_screen.dart';
import 'package:fickle_flight/screens/profile_screen.dart';
import 'package:fickle_flight/screens/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fickle_flight/screens/explore_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const FickleFlightApp());
}

class FickleFlightApp extends StatelessWidget {
  const FickleFlightApp({super.key});

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
          leading: Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Padding(
                padding: EdgeInsets.only(left: 8),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            );
          }),
          title: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              children: [
                const SizedBox(width: 20),
                Image.asset(
                  'assets/appBar.png',
                  height: 180,
                  width: 230,
                ),
                const Spacer(),
                GestureDetector(
                  child: CircleAvatar(
                    radius: 18,
                    child: Image.asset('assets/CircleAvatar.png'),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Profile(),
                      ),
                    );
                  },
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
        drawer: Drawer(
          backgroundColor: Colors.white,
          elevation: 0,
          width: 240,
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 8),
            // padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          'assets/Just_a_Girl.png',
                          width: 60,
                          height: 60,
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello',
                          style: GoogleFonts.inter(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Macy Johnson',
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: 0,
                  endIndent: 10,
                ),
                const CustomListTile(
                  icon: CupertinoIcons.person,
                  title: 'Profile',
                  styling: true,
                  navDestination: Profile(),
                ),
                const CustomListTile(
                  icon: Icons.turned_in_not_outlined,
                  title: 'All Bookings',
                  styling: true,
                ),
                const CustomListTile(
                  icon: CupertinoIcons.bell,
                  title: 'Favourites',
                  styling: true,
                ),
                const CustomListTile(
                  icon: CupertinoIcons.mail,
                  title: 'Get Help',
                  styling: true,
                ),
                const CustomListTile(
                  icon: CupertinoIcons.calendar,
                  title: 'Covid Advisory',
                  styling: true,
                ),
                const CustomListTile(
                  icon: CupertinoIcons.star,
                  title: 'Rate us',
                  styling: true,
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'App version 1.0.1',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF7E8B97),
                    ),
                    textAlign: TextAlign.start,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
