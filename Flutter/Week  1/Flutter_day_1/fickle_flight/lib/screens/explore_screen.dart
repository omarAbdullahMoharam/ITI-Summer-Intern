import 'package:fickle_flight/components/custom_card.dart';
import 'package:fickle_flight/components/custom_credit.dart';
import 'package:fickle_flight/components/custom_icon.dart';
import 'package:fickle_flight/components/plane_journey.dart';
import 'package:fickle_flight/trips/boracay_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  bool _isFav = false;

  void _toggleFavorite() {
    setState(() {
      _isFav = !_isFav;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor:  Color.fromARGB(255, 128, 252, 71),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image.asset(
                          "assets/resources/paris.png",
                          fit: BoxFit.cover,
                          height: 200,
                          width: 400,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 25,
                      right: 15,
                      child: IconButton(
                        onPressed: _toggleFavorite,
                        icon: Icon(
                          _isFav
                              ? Icons.favorite
                              : Icons.favorite_border_outlined,
                          size: 31,
                        ),
                        color: _isFav ? Colors.red : Colors.white,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 30.0),
                            child: Text(
                              "Paris",
                              style: GoogleFonts.balooBhai2(
                                color: const Color(0xFFFFFFFF),
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ),
                          const SizedBox(
                            width: 180,
                          ),
                          Column(
                            children: [
                              Text(
                                "FROM",
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "\$1299",
                                style: GoogleFonts.balooBhai2(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
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
                PlaneJourney(
                  height: 120,
                  titleFrom: 'SIN',
                  subtitleFrom: 'Singapore',
                  titleTo: 'LAX',
                  subtitleTo: 'Los Angeles',
                  Details: Padding(
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
                ),
                const SizedBox(height: 15),
                // const SizedBox(height: 12),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                        GestureDetector(
                          child: CustomCard(
                              img: Image.asset('assets/resources/Boracay.png'),
                              title: 'Boracay',
                              subtitle: 'Philippines',
                              duration: '5D4N'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const BoracayScreen(),
                              ),
                            );
                          },
                        ),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                  child: Row(
                    children: [
                      CustomCredit(
                        img: Image.asset(
                          'assets/offers/MasterCard.png',
                          width: 120,
                        ),
                        title: '20% discount for mastercard users',
                        subtitle: 'Limited time offer!',
                      ),
                      CustomCredit(
                        img: Image.asset(
                          'assets/offers/Visa.png',
                          width: 120,
                        ),
                        title: '25% discount with your Visa credit cards',
                        subtitle: 'Limited time offer!',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget customImage(Image img) {
  return Stack(
    children: [
      Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: img),
    ],
  );
}
