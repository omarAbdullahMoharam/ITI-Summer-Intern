import 'package:flutter/material.dart';
import 'package:quiz_app_task/Screens/question.dart';
import 'package:quiz_app_task/components/custom_image.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_task/constants/logic_variables.dart';

// ignore: must_be_immutable
class WelcomeScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Scaffold(
        backgroundColor: const Color(0xFF86948F),
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 80),
                Text(
                  'QUIZ',
                  style: GoogleFonts.kleeOne(
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                const CircleAvatar(
                  radius: 120,
                  backgroundColor: Colors.white,
                  child: CustomImage(),
                ),
                const SizedBox(height: 20),
                const SizedBox(height: 40),
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 350,
                        color: const Color(0xffABBFB8),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topCenter,
                              width: double.infinity,
                              padding:
                                  const EdgeInsets.only(top: 40, bottom: 15),
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
                            SizedBox(
                              width: 232,
                              height: 30,
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                controller: nameController,
                                validator: (value) => value!.isEmpty
                                    ? 'Please Enter Your Name'
                                    : null,
                                decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 20),
                              child: SizedBox(
                                height: 29,
                                width: 108,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: const Color(0xffB8E893),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: const BorderSide(
                                        color: Color(0xffB8E893),
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      name = nameController.text;
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const QuestionScreen(),
                                        ),
                                      );
                                    }
                                  },
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
                            ),
                          ],
                        ),
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
                  ],
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
