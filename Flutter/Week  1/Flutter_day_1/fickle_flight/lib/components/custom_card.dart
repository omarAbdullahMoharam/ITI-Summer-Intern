import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.img,
    required this.title,
    required this.subtitle,
    required this.duration,
  });

  final Image img;
  final String title, subtitle, duration;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: img,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: const Color(0xFF191919),
              ),
            ),
            Row(
              children: [
                Text(
                  subtitle,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF4D5760),
                  ),
                ),
                const SizedBox(width: 130),
                Container(
                  color: const Color(0xFFF8F9FB),
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    duration,
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF4D5760),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
