import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_task/Models/question_bank.dart';
import 'package:quiz_app_task/Screens/result.dart';
import 'package:quiz_app_task/components/custom_image.dart';
import 'package:quiz_app_task/components/custom_text.dart';
import 'package:quiz_app_task/constants/logic_variables.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  // ignore: non_constant_identifier_names
  final QuestionBank QB = QuestionBank();
  String? answer;
  // ignore: non_constant_identifier_names
  void nextQuestion() {
    setState(
      () {
        QB.jump();
        answer = null;
        if (QB.isEnd) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ResultScreen(),
            ),
          );
        }
      },
    );
  }

  void checkAnswer(String answer) {
    setState(
      () {
        this.answer = answer;
        QB.validateAnswer(answer);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    QuestionBank qb = QuestionBank();
    final currentQuestion = QB.getQuestion();
    int length = qb.questionCount();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'QUIZ',
          style: GoogleFonts.inter(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: const Color(0xFF86948F),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: CustomImage(),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 350,
                height: 410,
                color: const Color(0xFFB8E893),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 8.0, top: 6),
                                child: Text(
                                  "${QB.idx + 1}/$length",
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          CustomText(
                            text: currentQuestion.questionText,
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                          ), // Use widget.question directly
                        ],
                      ),
                    ),
                    for (var index in currentQuestion.answers[0].entries)
                      if (index.key != 'answer')
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 6.0, bottom: 6, right: 10, left: 10),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: answer == index.key
                                  ? const Color(0xff50997F)
                                  : Colors.white,
                            ),
                            child: ListTile(
                              title: CustomText(
                                text: '${index.key}) ${index.value}',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: answer == index.key
                                    ? Colors.white
                                    : Colors.black,
                              ),
                              onTap: () {
                                checkAnswer(index.key);
                              },
                            ),
                          ),
                        ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SizedBox(
                        height: 40,
                        width: 150,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: const Color(0xff86948F),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: const BorderSide(
                                color: Color(0xffB8E893),
                                width: 1,
                              ),
                            ),
                          ),
                          onPressed: () {
                            nextQuestion();
                          },
                          child: CustomText(
                            text: questionBank.isEnd ? 'Show Result' : 'Next',
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
