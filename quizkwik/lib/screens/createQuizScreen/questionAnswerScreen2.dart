import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizkwik/screens/createQuizScreen/scoreScreen.dart';
import 'package:quizkwik/screens/createQuizScreen/scoreScreen2.dart';
import 'package:quizkwik/widgets/myButton.dart';

import '../../widgets/appColors.dart';

class QuestionAnswerScreen2 extends StatefulWidget {
  const QuestionAnswerScreen2({Key? key}) : super(key: key);

  @override
  _QuestionAnswerScreen2State createState() => _QuestionAnswerScreen2State();
}

class _QuestionAnswerScreen2State extends State<QuestionAnswerScreen2> {
  final List<Map<String, dynamic>> _questions = [
    {
      'question': "“1+1” equals to what in binary?",
      'options': ["2", "10", "51", "100"],
      'correctAnswer': "10"
    },
    {
      'question': "“10*10” equals to what?",
      'options': ["1", "10", "100", "1000"],
      'correctAnswer': '100'
    },
    {
      'question': "“1+1” equals to what in binary?",
      'options': ["2", "10", "51", "100"],
      'correctAnswer': "10"
    },
    {
      'question': "“10*10” equals to what?",
      'options': ["1", "10", "100", "1000"],
      'correctAnswer': '100'
    },
    {
      'question': "“10*10” equals to what?",
      'options': ["1", "10", "100", "1000"],
      'correctAnswer': '100'
    },
  ];

  List<Widget> _buildOptions(int index) {
    List<Widget> options = [];

    for (int i = 0; i < _questions[index]['options'].length; i++) {
      bool isCorrectOption =
          _questions[index]['options'][i] == _questions[index]['correctAnswer'];
      bool isSelectedOption =
          _selectedOption[index] == _questions[index]['options'][i];
      IconData icon = Icons.radio_button_unchecked;

      if (_isAnswered[index]) {
        icon = isCorrectOption
            ? isSelectedOption
            ? Icons.check_circle
            : Icons.radio_button_unchecked
            : isSelectedOption
            ? Icons.cancel
            : Icons.radio_button_unchecked;
      }

      options.add(InkWell(
        onTap: _isAnswered[index]
            ? null
            : () {
          setState(() {
            _selectedOption[index] = _questions[index]['options'][i];
            _isAnswered[index] = true;
            if (_checkAllAnswered()) {
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
                          child: Image.asset(
                              "assets/images/popupImage.png",
                              height: 110.h,
                              width: 110.w),
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
                                            builder: (context) =>
                                            const ScoreScreen2()));
                                  },
                                  text: "Let’s Explore"),
                            ))
                      ],
                    ),
                  );
                },
              );
            }
          });
        },
        child: Container(
          padding: const EdgeInsets.all(15.0),
          margin: const EdgeInsets.symmetric(vertical: 5.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: isSelectedOption && _isAnswered[index]
                  ? isCorrectOption
                  ? Colors.green
                  : Colors.red
                  : Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  _questions[index]['options'][i],
                  style: TextStyle(fontSize: 14.sp),
                ),
              ),
              Icon(
                icon,
                color: isSelectedOption && _isAnswered[index]
                    ? isCorrectOption
                    ? Colors.green
                    : Colors.red
                    : Colors.grey,
              ),
            ],
          ),
        ),
      ));
    }

    return options;
  }

  final List<String> _selectedOption = ['', '', '', '', ''];
  final List<bool> _isAnswered = [
    false,
    false,
    false,
    false,
    false,
  ];
  final PageController _pageController = PageController();
  bool _checkAllAnswered() {
    for (int i = 0; i < _isAnswered.length; i++) {
      if (!_isAnswered[i]) {
        return false;
      }
    }
    return true;
  }

  int _currentStep = 0;
  final List<String> _steps = [
    'Step 1',
    'Step 2',
    'Step 3',
    'Step 4',
    'Step 5',
  ];

  void updateCurrentStep(int index) {
    setState(() {
      _currentStep = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  height: 400.h,
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
                  child: PageView.builder(
                    controller: _pageController,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: _questions.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Question No ${index + 1}: ',
                              style: TextStyle(fontSize: 14.sp),
                            ),
                            SizedBox(height: 20.h),
                            Text(
                              "${_questions[index]['question']}",
                              style: TextStyle(fontSize: 16.sp),
                            ),
                            SizedBox(height: 10.h),
                            Column(
                              children: _buildOptions(index),
                            ),
                            SizedBox(height: 20.h),
                            _isAnswered[index] &&
                                _selectedOption[index] !=
                                    _questions[index]['correctAnswer']
                                ? Text(
                              'Correct Answer: ${_questions[index]['correctAnswer']}',
                              style: const TextStyle(color: Colors.red),
                            )
                                : Container(),
                            const Spacer(),
                            MyButton(
                              onPressed: () {
                                if (_isAnswered[index] ||
                                    _selectedOption[index].isNotEmpty) {
                                  if (index != _questions.length - 1) {
                                    _pageController.nextPage(
                                      duration:
                                      const Duration(milliseconds: 500),
                                      curve: Curves.ease,
                                    );
                                    setState(() {
                                      _currentStep++;
                                    });
                                  } else {
                                    // show results dialog or navigate to results screen
                                  }
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Please select an option'),
                                    ),
                                  );
                                }
                              },
                              text: index == _questions.length - 1
                                  ? 'Finish'
                                  : 'Next',
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              Positioned(
                left: 16,
                right: 16,
                top: 120,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: _steps
                          .asMap()
                          .map((index, step) => MapEntry(
                        index,
                        Container(
                          decoration: BoxDecoration(
                            color: _currentStep == index
                                ? AppColors.colorPrimary
                                : AppColors.colorWhiteLowEmp,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          width: 57.7.w,
                          height: 6.h,
                        ),
                      ))
                          .values
                          .toList()
                          .asMap()
                          .map((index, container) => MapEntry(
                          index,
                          index < _steps.length - 1
                              ? Row(
                            children: [
                              container,
                              SizedBox(width: 8.w),
                            ],
                          )
                              : container))
                          .values
                          .toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
