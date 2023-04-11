import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizkwik/screens/createQuizScreen/createQuizScreen.dart';
import 'package:quizkwik/screens/joinQuizScreen.dart';

class HomeScreenQuizModel extends StatelessWidget {
  const HomeScreenQuizModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () {
                Get.to(const CreateQuizScreen());
              },
              child: Image.asset('assets/images/createQuiz.png',
                  height: 140.h, width: 104.w)),
          GestureDetector(
              onTap: () {
                Get.to(const JoinQuizScreen());
              },
              child: Image.asset('assets/images/joinQuiz.png',
                  height: 140.h, width: 104.w)),
          GestureDetector(
              onTap: () {},
              child: Image.asset('assets/images/achievements.png',
                  height: 140.h, width: 104.w)),
        ],
      ),
    );
  }
}
