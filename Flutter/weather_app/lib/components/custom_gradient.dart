import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
class CustomGradient extends StatelessWidget {
  const CustomGradient({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Color.fromARGB(255, 156, 153, 247),
            Colors.white,
          ],
        ),
      ),
      child: child,
    );
  }
}
