import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.icon,
    required this.title,
    this.styling = false,
    this.navDestination,
  });
  final IconData icon;
  final String title;
  final Widget? navDestination;
  final bool styling;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListTile(
        horizontalTitleGap: 5,
        leadingAndTrailingTextStyle: const TextStyle(
          color: Color(0xFF32D4AD),
          fontSize: 16,
          fontWeight: FontWeight.w700,
        ),
        leading: Container(
          width: 40,
          height: 40,
          color: styling ? Colors.white : const Color(0xFFF1F7FD),
          child: Icon(
            icon,
            size: 25,
            color: styling ? Colors.black : const Color(0xFF1262AE),
          ),
        ),
        title: Text(
          title,
          style: GoogleFonts.roboto(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: const Color(0xFF191919),
          ),
        ),
      ),
      onTap: () {
        if (navDestination != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => navDestination!,
            ),
          );
        }
      },
    );
  }
}
