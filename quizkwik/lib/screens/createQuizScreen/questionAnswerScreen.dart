import 'package:flutter/material.dart';
import '../../models/quizDataModel.dart';
import 'abc.dart';

class QuestionAnswerScreen extends StatefulWidget {
  const QuestionAnswerScreen({Key? key}) : super(key: key);

  @override
  _QuestionAnswerScreenState createState() => _QuestionAnswerScreenState();
}

class _QuestionAnswerScreenState extends State<QuestionAnswerScreen> {
  int _currentPageIndex = 0;
  List<QuizQuestion> _questions = questions;

  void _answerQuestion(int selectedOptionIndex) {
    setState(() {
      _questions[_currentPageIndex] = _questions[_currentPageIndex].copyWith(
        userAnswerIndex: selectedOptionIndex,
      );
    });
  }

  void _nextQuestion() {
    if (_currentPageIndex < _questions.length - 1) {
      setState(() {
        _currentPageIndex++;
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const ABC(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              _questions[_currentPageIndex].question,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ..._questions[_currentPageIndex]
                .options
                .asMap()
                .entries
                .map((entry) {
              final optionIndex = entry.key;
              final optionText = entry.value;
              final isUserAnswer =
                  _questions[_currentPageIndex].userAnswerIndex != null &&
                      _questions[_currentPageIndex].userAnswerIndex ==
                          optionIndex;
              final isCorrectAnswer =
                  _questions[_currentPageIndex].answerIndex == optionIndex;
              final isWrongAnswer = isUserAnswer && !isCorrectAnswer;

              return GestureDetector(
                onTap: () {
                  _answerQuestion(optionIndex);
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: isUserAnswer
                          ? (isWrongAnswer ? Colors.red : Colors.green)
                          : Colors.grey,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        optionText,
                        style: const TextStyle(fontSize: 18),
                      ),
                      if (_questions[_currentPageIndex].userAnswerIndex !=
                              null &&
                          _questions[_currentPageIndex].userAnswerIndex ==
                              optionIndex)
                        if (isCorrectAnswer)
                          Container(
                            width: 24,
                            height: 24,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 16,
                            ),
                          )
                        else if (isWrongAnswer)
                          Container(
                            width: 24,
                            height: 24,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 16,
                            ),
                          ),
                    ],
                  ),
                ),
              );
            }).toList(),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _nextQuestion,
              child: Text(_currentPageIndex == _questions.length - 1
                  ? "Finish"
                  : "Next"),
            ),
          ],
        ),
      ),
    );
  }
}
