import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenQuizModel extends StatelessWidget {
  final List<String> images = [
    'assets/images/createQuiz.png',
    'assets/images/joinQuiz.png',
    'assets/images/achievements.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        itemCount: images.length,
        padding: EdgeInsets.only(left: 16, right: 16),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(right: 10),
            child: Image.asset(images[index], height: 140.h, width: 104.w),
          );
        },
      ),
    );
  }
}
