import 'package:flutter/material.dart';
import 'package:weather_app/components/footer_component.dart';

class CustomGradient extends StatelessWidget {
  const CustomGradient({
    super.key,
    this.child,
    required this.bottomSheet,
  });
  final Widget? child;
  final bool? bottomSheet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(children: [
        Container(
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
        ),
        if (bottomSheet == true)
          const Positioned(
            bottom: -200,
            left: 0,
            right: 0,
            height: 460,
            child: FooterComponent(),
          ),
      ]),
    );
  }
}
