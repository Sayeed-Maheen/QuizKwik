class QuizQuestion {
  final String question;
  final List<String> options;
  final int answerIndex;
  final String number; // add this field
  int? userAnswerIndex;

  QuizQuestion(
      {required this.question,
      required this.options,
      required this.answerIndex,
      this.userAnswerIndex,
      required this.number});

  QuizQuestion copyWith({
    int? userAnswerIndex,
  }) {
    return QuizQuestion(
      question: question,
      number: number,
      options: options,
      answerIndex: answerIndex,
      userAnswerIndex: userAnswerIndex ?? this.userAnswerIndex,
    );
  }
}

final List<QuizQuestion> questions = [
  QuizQuestion(
    number: "1",
    question: "“1+1” equals to what in binary?",
    answerIndex: 1,
    options: ["2", "10", "51", "100"],
  ),
  QuizQuestion(
    number: "2",
    question: "“10*10” equals to what?",
    answerIndex: 2,
    options: ["1", "10", "100", "1000"],
  ),
  QuizQuestion(
    number: "3",
    question: "“1+1” equals to what in binary?",
    answerIndex: 1,
    options: ["2", "10", "51", "100"],
  ),
  QuizQuestion(
    number: "4",
    question: "“10*10” equals to what?",
    answerIndex: 2,
    options: ["1", "10", "100", "1000"],
  ),
  QuizQuestion(
    number: "5",
    question: "“10*10” equals to what?",
    answerIndex: 2,
    options: ["1", "10", "100", "1000"],
  ),
];
