import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.title, this.width, this.height, this.value});
  final String title;
  final double? width, height;
  final bool? value;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFF99A0E),
          shape: const RoundedRectangleBorder(
            side: BorderSide(color: Color(0xFFF99A0E)),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          minimumSize: Size(width ?? 300, height ?? 50),
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }
}
