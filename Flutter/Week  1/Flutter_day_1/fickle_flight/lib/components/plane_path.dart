import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlanePath extends StatelessWidget {
  const PlanePath({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          _buildCircle(),
          _buildDottedLine(),
          _buildFlightIcon(),
          _buildDottedLine(),
          _buildCircle(),
        ],
      ),
    );
  }
}

Widget _buildCircle() {
  return Container(
    width: 20,
    height: 20,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: Colors.blue,
        width: 2,
      ),
    ),
    child: Center(
      child: Container(
        width: 10,
        height: 10,
        decoration: const BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
      ),
    ),
  );
}

Widget _buildDottedLine() {
  return DottedBorder(
    color: Colors.grey,
    strokeWidth: 1,
    dashPattern: const [4, 4],
    child: const SizedBox(
      height: 1,
      width: 40,
    ),
  );
}

Widget _buildFlightIcon() {
  return Container(
    width: 40,
    height: 40,
    decoration: BoxDecoration(
      color: const Color(0xFF1262AE),
      shape: BoxShape.circle,
      border: Border.all(
        color: Colors.blue,
        width: 4,
      ),
    ),
    child: const Center(
      child: Icon(
        CupertinoIcons.airplane,
        color: Colors.white,
      ),
    ),
  );
}
