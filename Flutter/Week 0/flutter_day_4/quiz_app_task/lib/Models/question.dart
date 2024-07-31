class Question {
  String questionText;
  List<Map<String, dynamic>> answers;
  int index;

  Question({
    required this.questionText,
    required this.answers,
    required this.index,
  });
}
