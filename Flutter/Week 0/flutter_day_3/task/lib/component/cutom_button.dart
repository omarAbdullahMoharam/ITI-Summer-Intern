import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Color? backgroundColor;
  final Color? fontColor;
  VoidCallback onPressed;

  CustomButton({
    super.key,
    required this.label,
    this.backgroundColor,
    this.fontColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 281,
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          foregroundColor: fontColor ?? const Color(0xff1B1A40),
          backgroundColor: backgroundColor ?? const Color(0xffFFDE69),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: const BorderSide(color: Color(0xffFFDE69)),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 20,
            color: fontColor ?? const Color(0xff1B1A40),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
