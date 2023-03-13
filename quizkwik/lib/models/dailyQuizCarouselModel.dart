import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/appColors.dart';

class DailyQuizCarouselModel extends StatefulWidget {
  const DailyQuizCarouselModel({Key? key}) : super(key: key);

  @override
  State<DailyQuizCarouselModel> createState() => _DailyQuizCarouselModelState();
}

class _DailyQuizCarouselModelState extends State<DailyQuizCarouselModel> {
  List<String> images = [
    "assets/images/dailyQuiz.png",
    "assets/images/dailyQuiz.png",
    "assets/images/dailyQuiz.png",
  ];

  List<String> titles = [
    "Daily Quiz",
    "Daily Quiz",
    "Daily Quiz",
  ];
  List<String> titles2 = [
    "Play, earn, compete",
    "Play, earn, compete",
    "Play, earn, compete",
  ];

  int currentIndex = 0;
  final PageController controller = PageController();
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 2), (timer) {
      if (currentIndex == images.length - 1) {
        currentIndex = 0;
        controller.animateToPage(
          currentIndex,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        currentIndex++;
        controller.nextPage(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 180.h,
            width: double.infinity,
            child: PageView.builder(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index % images.length;
                });
              },
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16, left: 16),
                      child: SizedBox(
                        height: 180.h,
                        width: double.infinity,
                        child: Center(
                          child: Image.asset(
                            images[index % images.length],
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 42.5,
                      left: 22,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        child: Text(
                          titles[index % images.length],
                          style: TextStyle(
                            color: AppColors.colorWhiteHighEmp,
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 85,
                      left: 22,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        child: Text(
                          titles2[index % images.length],
                          style: TextStyle(
                            color: AppColors.colorWhiteHighEmp,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 120,
                      left: 38,
                      child: Container(
                        height: 34.h,
                        width: 98.w,
                        decoration: BoxDecoration(
                          color: AppColors.colorWhiteHighEmp,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Center(
                          child: Text(
                            "Join a quiz",
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColors.colorBlackHighEmp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          SizedBox(height: 2.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < images.length; i++)
                buildIndicator(currentIndex == i)
            ],
          ),
        ],
      ),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Container(
      margin: EdgeInsets.all(2),
      height: isSelected ? 8 : 8,
      width: isSelected ? 24 : 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: isSelected
            ? AppColors.colorPrimary
            : AppColors.colorIndicatorUnselected,
      ),
    );
  }
}
