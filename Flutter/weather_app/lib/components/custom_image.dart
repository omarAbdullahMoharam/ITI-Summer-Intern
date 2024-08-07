import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/components/WeatherLogo.png',
      alignment: Alignment.center,
      width: 293,
      height: 170,
    );
  }
}
