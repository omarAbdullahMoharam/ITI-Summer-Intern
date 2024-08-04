import 'package:dotted_border/dotted_border.dart';
import 'package:fickle_flight/components/custom_card.dart';
import 'package:fickle_flight/components/custom_credit.dart';
import 'package:fickle_flight/components/custom_icon.dart';
import 'package:fickle_flight/components/custom_text.dart';
import 'package:fickle_flight/components/plan_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 128, 252, 71),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                customImage(
                  Image.asset(
                    'assets/resources/paris.png',
                    width: 500,
                    height: 300,
                  ),
                ),
                const Positioned(
                  top: 55,
                  right: 21,
                  child: Icon(
                    Icons.favorite_outline_sharp,
                    color: Colors.white,
                    size: 31,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                "Upcoming Flight",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              height: 115,
              margin: const EdgeInsets.only(left: 8, right: 8),
              // width: 410,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(8),
                shape: BoxShape.rectangle,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(title: 'SIN', subtitle: 'Singapore'),
                      SizedBox(width: 34),
                      Expanded(
                        child: PlanPath(),
                      ),
                      CustomText(title: 'LAX', subtitle: 'Los Angeles')
                    ],
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      children: [
                        Text(
                          'Departs on: 1 May, 08:00 AM',
                          style: GoogleFonts.inter(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF191919),
                          ),
                          textAlign: TextAlign.start,
                        ),
                        const Spacer(flex: 1),
                        Container(
                          margin: const EdgeInsets.only(right: 15),
                          child: Text(
                            '4 days to go',
                            style: GoogleFonts.inter(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF191919),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomIcon(
                      icon: CupertinoIcons.airplane,
                      color: const Color(0xFF5443CB),
                      title: 'Flight',
                    ),
                    const SizedBox(width: 10),
                    CustomIcon(
                      icon: Icons.bed,
                      color: const Color(0xFFF9668D),
                      title: 'Hotels',
                    ),
                    const SizedBox(width: 10),
                    CustomIcon(
                      icon: Icons.local_offer_sharp,
                      color: const Color(0xFFFF9B53),
                      title: 'Attractions',
                    ),
                    const SizedBox(width: 10),
                    CustomIcon(
                      icon: Icons.restaurant,
                      color: const Color(0xFF36DA76),
                      title: 'Eats',
                    ),
                    const SizedBox(width: 10),
                    CustomIcon(
                      icon: Icons.train,
                      color: const Color(0xFFFDBF00),
                      title: 'Commute',
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: [
                  Text(
                    'Trending Destinations',
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF191919),
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const Spacer(flex: 1),
                  Text(
                    'See all',
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF1262AE),
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    CustomCard(
                        img: Image.asset('assets/resources/Boracay.png'),
                        title: 'Boracay',
                        subtitle: 'Philippines',
                        duration: '5D4N'),
                    CustomCard(
                      img: Image.asset('assets/resources/Baros.png'),
                      title: 'Baros',
                      subtitle: 'Maldives',
                      duration: '7D6N',
                    ),
                    CustomCard(
                      img: Image.asset('assets/resources/Bali.png'),
                      title: 'Bali',
                      subtitle: 'Indonesia',
                      duration: '3D2N',
                    ),
                    CustomCard(
                      img: Image.asset('assets/resources/Palawan.png'),
                      title: 'Palawan',
                      subtitle: 'Philippines',
                      duration: '3D2N',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                'Offers',
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF191919),
                ),
                textAlign: TextAlign.start,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    CustomCredit(
                        img: Image.asset('assets/offers/MasterCard.png'),
                        title: '20% discount for mastercard users',
                        subtitle: 'Limited time offer!'),
                    CustomCredit(
                        img: Image.asset('assets/offers/Visa.png'),
                        title: '25% discount with your Visa credit cards',
                        subtitle: 'Limited time offer!'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget customImage(Image img) {
  return Stack(
    children: [
      img,
    ],
  );
}
