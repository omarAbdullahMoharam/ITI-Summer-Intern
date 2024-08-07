import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/components/custom_image.dart';

class FooterComponent extends StatelessWidget {
  const FooterComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xFFE3E2FD),
            Color(0xFFA8B1FF),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 225, 225, 255),
        body: Center(
          child: Container(
            height: 690,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFFA8B1FF),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(top: 40, bottom: 0, right: 30),
                    child: const CustomImage(),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(top: 0, bottom: 5, right: 30),
                    child: Text(
                      'Weather',
                      style: GoogleFonts.kadwa(
                        color: const Color(0xFF000000),
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
