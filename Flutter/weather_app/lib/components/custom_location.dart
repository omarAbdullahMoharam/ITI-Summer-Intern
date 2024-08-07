import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomLocation extends StatelessWidget {
  // const CustomLocation({super.key});
  String weatherState, locationName, currentTemp;
  Image backgroundImage;

  CustomLocation({
    super.key,
    required this.weatherState,
    required this.locationName,
    required this.currentTemp,
    required this.backgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              constraints: const BoxConstraints.expand(),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: backgroundImage.image,
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 75,
                  ),
                  Text(
                    locationName,
                    style: GoogleFonts.kadwa(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    currentTemp,
                    style: GoogleFonts.kadwa(
                      color: Colors.black,
                      fontSize: 70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    weatherState,
                    style: GoogleFonts.kadwa(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.only(
                          // top: 20,
                          ),
                      height: 40,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white.withOpacity(0.5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Center(
                            child: Text(
                              '🌿',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            ' AQI 53',
                            style: GoogleFonts.kadwa(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
            const Positioned(
              top: 25,
              left: 20,
              child: SizedBox(
                width: 690,
                child: Row(
                  children: [
                    Icon(Icons.add, color: Colors.white, size: 40),
                    Spacer(
                      flex: 1,
                    ),
                    Icon(Icons.more_vert, color: Colors.white, size: 40),
                    Spacer(
                      flex: 1,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        bottomSheet: Container(
          height: 130,
          width: 400,
          decoration: BoxDecoration(
            color: const Color(0xFFEEE1D1).withOpacity(0.52),
            borderRadius: const BorderRadius.all(Radius.circular(18.0)),
          ),
          child: Center(
              child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 20, left: 8, right: 8),
                child: Row(
                  children: [
                    Text(
                      '5-day forecast',
                      style: GoogleFonts.kadwa(
                        color: const Color.fromARGB(255, 141, 141, 141),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'More details ',
                      style: GoogleFonts.kadwa(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                    const Icon(
                      FontAwesomeIcons.arrowRight,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 0, left: 8, right: 8),
                child: Row(
                  children: [
                    Text(
                      '⛅  Mon clear',
                      style: GoogleFonts.kadwa(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '39° / 26°',
                      style: GoogleFonts.kadwa(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 0, left: 8, right: 8),
                child: Row(
                  children: [
                    Text(
                      '☀️  Tue clear',
                      style: GoogleFonts.kadwa(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '39° / 26°',
                      style: GoogleFonts.kadwa(
                        color: Colors.grey,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
