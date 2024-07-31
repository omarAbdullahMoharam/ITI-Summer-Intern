import 'package:quiz_app_task/Models/question.dart';
import 'package:quiz_app_task/constants/logic_variables.dart';

class QuestionBank {
  int idx = 0;
  bool isEnd = false;
  bool answeredCorrectly = false;

  final List<Question> questions = [
    Question(
      questionText: ' The World Largest desert is ? ',
      answers: [
        {
          "A": ' Thar',
          "B": 'Kalahari',
          "C": 'Sahara',
          "D": ' Sonoran',
          "answer": "B"
        },
      ],
      index: 1,
    ),
    Question(
      questionText: "The metal whose salts are sensitive to light is ? ",
      answers: [
        {
          "A": "Zinc",
          "B": " Silver",
          "C": " Copper",
          "D": " Aluminium",
          "answer": "B"
        },
      ],
      index: 2,
    ),
    Question(
      questionText: ' The Central Rice Research Station is situated in ?',
      answers: [
        {
          'A': 'Programming Language',
          'B': 'JDk',
          'C': 'Open Source Software',
          'D': 'None of the above',
          "answer": "D"
        },
      ],
      index: 3,
    ),
  ];
  Question getQuestion() {
    return questions[idx];
  }

  // ignore: non_constant_identifier_names
  int questionCount() {
    return questions.length;
  }

  void jump() {
    if (idx >= questions.length - 1) {
      isEnd = true;
      status = score > questionCount() / 2 ? "win" : "lose";
    } else {
      idx++;
      answeredCorrectly = false;
    }
  }

  void validateAnswer(String answer) {
    if (questions[idx].answers[0]["answer"] == answer) {
      score++;
      answeredCorrectly = true;
    }
  }

  void reset() {
    idx = 0;
    score = 0;
    isEnd = false;
    answeredCorrectly = false;
  }
}
