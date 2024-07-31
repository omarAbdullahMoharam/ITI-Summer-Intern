import 'package:flutter/material.dart';
import 'package:quiz_app_task/Models/question_bank.dart';
import 'package:quiz_app_task/Screens/welcome.dart';
import 'package:quiz_app_task/components/custom_text.dart';
import 'package:quiz_app_task/constants/logic_variables.dart';

import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    QuestionBank QB = QuestionBank();
    return Scaffold(
      backgroundColor: const Color(0xFF86948F),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const SizedBox(height: 20),
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            width: 350,
                            height: 250,
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
                                ),
                                //text here🔻🔻
                                SizedBox(
                                  width: 232,
                                  height: 30,
                                  child: CustomText(
                                      text:
                                          'HELLO ${name.toUpperCase()} YOUR SCORE IS'),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                CustomText(
                                  text:
                                      '$score / ${questionBank.questionCount()}',
                                  fontSize: 40,
                                  fontWeight: FontWeight.w400,
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                //button here🔻 🔻
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: SizedBox(
                                    height: 35,
                                    width: 150,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white,
                                        backgroundColor:
                                            const Color(0xffB8E893),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          side: const BorderSide(
                                            color: Color(0xffB8E893),
                                            width: 1,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        QB.reset();
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                WelcomeScreen(),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        'Back To Start',
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
                      height: 50,
                      width: 270,
                      color: const Color(0xffB8E893),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      child: Text(
                        'CONGRATULATIONS!!!!',
                        style: GoogleFonts.kleeOne(
                          color: const Color(0xFF000000),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
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
