import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizkwik/widgets/myButton.dart';

import '../../models/quizDataModel.dart';
import '../../widgets/appColors.dart';
import 'scoreScreen.dart';

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
      _showNewPopup();
    }
  }

  void _showNewPopup() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          backgroundColor: AppColors.colorPopupBg,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 110.h,
                width: double.infinity,
                padding: const EdgeInsets.only(top: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(24),
                  ),
                  color: AppColors.colorWhiteHighEmp,
                ),
                child: Image.asset("assets/images/popupImage.png",
                    height: 110.h, width: 110.w),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(0)),
                  color: AppColors.colorWhiteHighEmp,
                ),
                child: Center(
                  child: Text(
                    "Congo!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 36.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.colorSuccess),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(0)),
                  color: AppColors.colorWhiteHighEmp,
                ),
                child: Center(
                  child: Text(
                    "You’ve completed the quiz",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.colorBlackLowEmp),
                  ),
                ),
              ),
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(0),
                        bottomRight: Radius.circular(100),
                        topLeft: Radius.circular(0),
                        bottomLeft: Radius.circular(24)),
                    color: AppColors.colorWhiteHighEmp,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 10),
                    child: MyButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ScoreScreen()));
                        },
                        text: "Let’s Explore"),
                  ))
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 100.h,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.colorBlueGradientStart,
                        AppColors.colorBlueGradientEnd
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 35, bottom: 35),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: AppColors.colorWhiteHighEmp,
                            )),

                        Text(
                          'Dummy quiz',
                          style: TextStyle(
                              fontSize: 20.sp,
                              color: AppColors.colorWhiteHighEmp,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                      margin: const EdgeInsets.only(top: 90),
                      height: 390.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.2),
                              blurRadius: 15.0, // Soften the shadow
                              spreadRadius: 0.0, // Extend the shadow
                              offset: const Offset(
                                5, // Move to the right 5 horizontally
                                5, // Move to the bottom 5 vertically
                              ),
                            )
                          ],
                          color: AppColors.colorWhiteHighEmp,
                          borderRadius: BorderRadius.circular(24)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                                "Question No. ${_questions[_currentPageIndex].number}",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600)),
                            SizedBox(height: 24.h),
                            Text(
                              _questions[_currentPageIndex].question,
                              style: TextStyle(
                                  fontSize: 16.sp, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(height: 16),
                            ..._questions[_currentPageIndex]
                                .options
                                .asMap()
                                .entries
                                .map((entry) {
                              final optionIndex = entry.key;
                              final optionText = entry.value;
                              final isUserAnswer = _questions[_currentPageIndex]
                                          .userAnswerIndex !=
                                      null &&
                                  _questions[_currentPageIndex].userAnswerIndex ==
                                      optionIndex;
                              final isCorrectAnswer =
                                  _questions[_currentPageIndex].answerIndex ==
                                      optionIndex;
                              final isWrongAnswer =
                                  isUserAnswer && !isCorrectAnswer;

                              return GestureDetector(
                                onTap: () {
                                  _answerQuestion(optionIndex);
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(16),
                                  margin: const EdgeInsets.only(bottom: 16),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(56),
                                    border: Border.all(
                                      width: 1,
                                      color: isUserAnswer
                                          ? (isWrongAnswer
                                              ? Colors.red
                                              : Colors.green)
                                          : AppColors.colorBlackLowEmp,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        optionText,
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      if (_questions[_currentPageIndex]
                                                  .userAnswerIndex !=
                                              null &&
                                          _questions[_currentPageIndex]
                                                  .userAnswerIndex ==
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
                            MyButton(
                              onPressed: _nextQuestion,
                              text: _currentPageIndex == _questions.length - 1
                                  ? "Finish"
                                  : "Next",
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
