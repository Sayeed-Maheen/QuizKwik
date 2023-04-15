import 'package:flutter/foundation.dart';

class QuizQuestion {
  final String question;
  final List<String> options;
  final int answerIndex; // add this field
  int? userAnswerIndex;

  QuizQuestion({
    required this.question,
    required this.options,
    required this.answerIndex,
    this.userAnswerIndex,
  });

  QuizQuestion copyWith({
    int? userAnswerIndex,
  }) {
    return QuizQuestion(
      question: question,
      options: options,
      answerIndex: answerIndex,
      userAnswerIndex: userAnswerIndex ?? this.userAnswerIndex,
    );
  }
}

final List<QuizQuestion> questions = [
  QuizQuestion(
    question: "What is the capital of France?",
    answerIndex: 1,
    options: ["Madrid", "Paris", "Rome", "Berlin"],
  ),
  QuizQuestion(
    question: "What is the largest country in the world?",
    answerIndex: 2,
    options: ["USA", "China", "Russia", "Canada"],
  ),
  QuizQuestion(
    question: "What is the currency of Japan?",
    answerIndex: 1,
    options: ["Yuan", "Yen", "Won", "Dollar"],
  ),
  QuizQuestion(
    question: "Who wrote the novel 'Pride and Prejudice'?",
    answerIndex: 2,
    options: [
      "Charles Dickens",
      "William Shakespeare",
      "Jane Austen",
      "George Orwell"
    ],
  ),
  QuizQuestion(
    question: "What is the largest planet in our solar system?",
    answerIndex: 2,
    options: ["Saturn", "Mars", "Jupiter", "Earth"],
  ),
];
