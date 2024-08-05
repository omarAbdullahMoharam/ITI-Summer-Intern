import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch(
      {super.key, this.fontColor, required this.title, this.backgroundColor});
  final Color? fontColor;
  final Color? backgroundColor;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(35),
        ),
        color: backgroundColor ?? const Color.fromARGB(255, 232, 231, 231),
      ),
      child: Center(
          child: Text(
        title,
        style: TextStyle(
          color: fontColor ?? const Color(0xFFA1ABB6),
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      )),
    );
  }
}
