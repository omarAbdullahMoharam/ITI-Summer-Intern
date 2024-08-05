import 'package:fickle_flight/components/custom_button.dart';
import 'package:fickle_flight/components/plane_journey.dart';
import 'package:fickle_flight/screens/explore_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Booking extends StatelessWidget {
  const Booking({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFFFFF),
          title: const Text('Booking'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Explore()),
              );
            },
          ),
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          centerTitle: true,
        ),
        body: Card(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Spacer(
                flex: 1,
              ),
              const Text(
                'Upcoming Bookings',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image(
                    width: 391,
                    image: AssetImage(
                      'assets/resources/BalmTrees.png',
                    ),
                  ),
                ),
              ),
              PlaneJourney(
                titleFrom: 'SIN',
                titleTo: 'LAX',
                subtitleFrom: 'Singapore',
                subtitleTo: 'Los Angeles',
                height: 300,
                padding: true,
                border: true,
                Details: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Row(
                        children: [
                          Text(
                            'Terminal 1',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF7E8B97),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            'Terminal 4',
                            style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF7E8B97),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ListTile(
                            leading: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/resources/UnitedAir.png',
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  'United Airlines',
                                  style: GoogleFonts.inter(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xFF7E8B97),
                                  ),
                                ),
                              ],
                            ),
                            trailing: SizedBox(
                              width: 108,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(Icons.timer_outlined),
                                  Text(
                                    '01 hr 40min',
                                    style: GoogleFonts.inter(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xFF7E8B97),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text(
                        'Show more details...',
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF1262AE),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Divider(
                      thickness: 0.1,
                      color: Color.fromARGB(255, 0, 0, 0),
                      endIndent: 10,
                      indent: 10,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const CustomButton(title: 'Edit Booking'),
                  ],
                ),
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
