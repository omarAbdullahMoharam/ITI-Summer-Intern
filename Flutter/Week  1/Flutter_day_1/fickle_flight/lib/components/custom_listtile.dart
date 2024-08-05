import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.icon,
    required this.title,
  });
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 5,
      leadingAndTrailingTextStyle: const TextStyle(
        color: Color(0xFF32D4AD),
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      leading: Container(
        width: 40,
        height: 40,
        color: const Color(0xFFF1F7FD),
        child: Icon(
          icon,
          color: const Color(0xFF1262AE),
          size: 20,
        ),
      ),
      title: Text(
        title,
        style: GoogleFonts.roboto(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: const Color(0xFF191919),
        ),
      ),
    );
  }
}
