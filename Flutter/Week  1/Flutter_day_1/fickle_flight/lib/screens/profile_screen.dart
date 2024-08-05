import 'package:fickle_flight/components/custom_listtile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/resources/beach.jpg',
              fit: BoxFit.fitHeight,
            ),
          ],
        ),
      ),
      bottomSheet: Stack(
        children: [
          SizedBox(
            height: 510,
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 48,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Title(
                      color: const Color(0xFF191919),
                      child: Text(
                        'Macy Johnson',
                        style: GoogleFonts.inter(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Baguio, Philippines',
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF7E8B97),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'I like the beach, mountains, forest and everything about nature! :)',
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF191919),
                      ),
                    ),
                  ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  const Divider(
                    thickness: 0.25,
                    color: Color(0xFF191919),
                    indent: 10,
                    endIndent: 10,
                  ),
                  const CustomListTile(
                    icon: CupertinoIcons.creditcard,
                    title: 'Payment Details',
                  ),
                  const CustomListTile(
                    icon: Icons.coronavirus_outlined,
                    title: 'Covid Advisory',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Title(
                      color: Colors.white,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            color: const Color(0xFFF1F7FD),
                            child: const Icon(
                              CupertinoIcons.person_3,
                              color: Color(0xFF1262AE),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'Referral Code',
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF191919),
                            ),
                          ),
                          const SizedBox(width: 15),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Container(
                              width: 40,
                              height: 20,
                              decoration: BoxDecoration(
                                color: const Color(0xFF32D4AD),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                child: Text(
                                  'NEW',
                                  style: GoogleFonts.inter(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const CustomListTile(
                    icon: Icons.settings_outlined,
                    title: 'Settings',
                  ),
                  const CustomListTile(
                    icon: CupertinoIcons.square_arrow_right,
                    title: 'Logout',
                  ),
                  const SizedBox(height: 6),
                  Center(
                    child: Container(
                      height: 40,
                      width: 360,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 140, 194, 245),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.help_outline_rounded,
                            color: Color(0xFF1262AE),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'Have questions? We are here to help',
                            style: GoogleFonts.inter(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF1262AE)),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: FractionalTranslation(
              translation: const Offset(0.0, -0.4),
              child: Align(
                alignment: const FractionalOffset(0.5, 0.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.white,
                        width: 0,
                      )),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/Just_a_Girl.png',
                            width: 101,
                            height: 101,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
