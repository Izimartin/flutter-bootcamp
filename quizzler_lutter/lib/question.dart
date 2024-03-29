class Question {
  String questionText;
  bool questionAnswer;

  Question(String s, bool bool, {String q = '', bool a = false})
      : questionText = q,
        questionAnswer = a {
    questionText = q;
    questionAnswer = a;
  }
}

Question question = Question('text', true);
