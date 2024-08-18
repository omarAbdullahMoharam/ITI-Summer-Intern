import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/components/custom_gradient.dart';
import 'package:weather_app/components/custom_loc_container.dart';
import 'package:weather_app/components/custom_location.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 115, 114, 190),
      body: CustomGradient(
        bottomSheet: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 60, bottom: 0),
              height: 55,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color:
                    const Color.fromARGB(255, 115, 114, 190).withOpacity(0.5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(CupertinoIcons.search, color: Colors.white),
                    ),
                    SizedBox(
                      width: 289,
                      child: TextField(
                        style: GoogleFonts.kadwa(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(
                          focusedBorder: InputBorder.none,
                          contentPadding: const EdgeInsets.only(
                            left: 15,
                          ),
                          hintText: ' Enter location ',
                          hintStyle: GoogleFonts.kadwa(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomLocContainer(
              city: 'Cairo',
              aqi: '53',
              minMaxTemp: '38° / 25° ',
              currentTemp: '38°',
              navDestination: CustomLocation(
                weatherState: 'clear 38°/25°',
                locationName: 'Cairo',
                currentTemp: '38°',
                backgroundImage: Image.asset('assets/images/Cities/Cairo.png'),
              ),
            ),
            CustomLocContainer(
              city: 'Alexandria',
              aqi: '53',
              minMaxTemp: ' 35° / 25° ',
              currentTemp: '35°',
              navDestination: CustomLocation(
                weatherState: 'clear 38°/25°',
                locationName: 'Alexandria',
                currentTemp: '38°',
                backgroundImage: Image.asset('assets/images/Cities/Alex.png'),
              ),
            ),
            CustomLocContainer(
              city: 'Tokyo',
              aqi: '53',
              minMaxTemp: '38° / 25° ',
              currentTemp: '38°',
              navDestination: CustomLocation(
                weatherState: 'clear 38°/25°',
                locationName: 'Tokyo',
                currentTemp: '38°',
                backgroundImage: Image.asset('assets/images/Cities/Tokyo.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
