import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomLocContainer extends StatelessWidget {
  const CustomLocContainer(
      {super.key,
      required this.city,
      required this.aqi,
      required this.minMaxTemp,
      required this.currentTemp,
      required this.navDestination});
  final String city, aqi, minMaxTemp, currentTemp;
  final Widget navDestination;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (con) => navDestination),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
        height: 104,
        width: 376,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFF829EC5).withOpacity(0.5),
        ),
        child: Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 20,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Text(
                    city,
                    style: GoogleFonts.kadwa(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 15,
                  ),
                  child: Text(
                    'AQI $aqi     $minMaxTemp',
                    style: GoogleFonts.kadwa(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 10,
            ),
            Text(
              currentTemp,
              style: GoogleFonts.kadwa(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(right: 10.0),
              // padding: const EdgeInsets.all(8.0),
              child: Icon(
                CupertinoIcons.chevron_right,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
