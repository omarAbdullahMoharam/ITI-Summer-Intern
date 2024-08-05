import 'package:fickle_flight/components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoracayScreen extends StatelessWidget {
  const BoracayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/resources/borocay_screen.jpg'),
      bottomSheet: SizedBox(
        height: 500,
        width: double.infinity,
        child: Card(
          margin:
              const EdgeInsets.only(top: 10, bottom: 2, left: 15, right: 20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Boracay',
                        style: GoogleFonts.inter(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Philippines',
                        style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF4D5760),
                        ),
                      )
                    ],
                  ),
                  Container(
                    height: 25,
                    width: 60,
                    padding: const EdgeInsets.only(left: 10),
                    decoration: const BoxDecoration(
                      color: Color(0xFFF4F5F6),
                    ),
                    child: Text(
                      '5D4N',
                      style: GoogleFonts.inter(
                        color: const Color(0xFF4D5760),
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Spacer(),
                  Text(
                    '\$349',
                    style: GoogleFonts.inter(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Overview',
                style: GoogleFonts.inter(
                    fontSize: 20, fontWeight: FontWeight.w700),
                textAlign: TextAlign.start,
              ),
              Text(
                'Spend 5 days and 4 nights in one of the best islands in the world! Bask in the sun while walking in the white sand beach and enjoy the night partying at the popular seaside bars.',
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF191919),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Photos',
                style: GoogleFonts.inter(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CustomImage('assets/boracay/1.png'),
                    CustomImage('assets/boracay/2.png'),
                    CustomImage('assets/boracay/3.png'),
                    CustomImage('assets/boracay/4.png'),
                    CustomImage('assets/boracay/5.png'),
                    CustomImage('assets/boracay/6.png'),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const CustomButton(
                title: 'Book Now',
                value: true,
                width: 400,
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget CustomImage(String path) {
  return Padding(
    padding: const EdgeInsets.only(left: 8.0, right: 8),
    child: Image.asset(
      path,
      height: 150,
    ),
  );
}
