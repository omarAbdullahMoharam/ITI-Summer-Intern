import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomCredit extends StatelessWidget {
  CustomCredit(
      {super.key,
      required this.img,
      required this.title,
      required this.subtitle});
  final String title, subtitle;
  Image img;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      elevation: 6,
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.only(
          left: 4,
          bottom: 5,
        ),
        child: Row(
          children: [
            img,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  width: 175,
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  // width: 264,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF999999),
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
