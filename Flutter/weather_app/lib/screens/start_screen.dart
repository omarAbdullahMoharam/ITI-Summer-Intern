import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/components/custom_gradient.dart';
import 'package:weather_app/components/custom_image.dart';
import 'package:weather_app/screens/search_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomGradient(
        bottomSheet: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const CustomImage(),
            Text(
              'Weather',
              style: GoogleFonts.kadwa(
                color: const Color(0xFF000000),
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchScreen(),
                  ),
                );
              },
              style: TextButton.styleFrom(
                foregroundColor: const Color(0xFF000000),
                textStyle: const TextStyle(
                  fontSize: 20,
                ),
              ),
              child: Container(
                margin: const EdgeInsets.only(bottom: 20),
                alignment: Alignment.center,
                width: 166,
                height: 47,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    stops: [0.0, 1.0],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromARGB(255, 35, 163, 237),
                      Color(0xFFffffff),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  'let\'s start',
                  style: GoogleFonts.kadwa(
                    color: const Color(0xFFFFFFFF),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
