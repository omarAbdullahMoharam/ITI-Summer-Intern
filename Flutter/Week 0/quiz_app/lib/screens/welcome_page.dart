import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff86948F),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              Text(
                'QUIZ',
                style: GoogleFonts.kleeOne(
                  fontSize: 50,
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const CircleAvatar(
                radius: 120,
                backgroundImage: AssetImage('assets/avatar.jpg'),
                backgroundColor: Colors.transparent,
              ),
              const SizedBox(
                height: 10,
              ),
              const Spacer(
                flex: 1,
              ),
              Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Column(
                        children: [
                          Container(
                            width: 350,
                            height: 200,
                            color: const Color(0xffABBFB8),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.topCenter,
                                  width: 400,
                                  height: 29,
                                  margin: const EdgeInsets.only(
                                    top: 40,
                                    bottom: 15,
                                  ),
                                  child: const Text(
                                    'Please Enter Your Name ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                //textFeild here🔻🔻
                                const SizedBox(
                                  width: 232,
                                  height: 26,
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
                                        borderSide: BorderSide(
                                          color: Colors.white,
                                          width: 2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                //button here🔻 🔻
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: SizedBox(
                                    height: 29,
                                    width: 108,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor:
                                            const Color(0xffB8E893),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          side: const BorderSide(
                                            color: Color(0xffB8E893),
                                            width: 1,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'SUBMIT',
                                        style: GoogleFonts.inter(
                                          color: Colors.black,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: -20,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 40,
                          width: 200,
                          color: const Color(0xffB8E893),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          child: Text(
                            'WELCOME',
                            style: GoogleFonts.kleeOne(
                              color: const Color(0xFF000000),
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ]),
              const Spacer(
                flex: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
