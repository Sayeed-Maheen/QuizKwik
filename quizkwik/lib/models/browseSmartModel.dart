import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizkwik/screens/browseCategoriesScreen.dart';
import 'package:quizkwik/screens/demoQuizScreen.dart';
import 'package:quizkwik/widgets/myContainer.dart';

import '../widgets/appColors.dart';

class BrowseSmartModel extends StatelessWidget {
  const BrowseSmartModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyContainer(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 16.h), // adds 16 units of height
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Browse Smart!",
                style: TextStyle(
                    fontSize: 20.sp,
                    color: AppColors.colorBlackHighEmp,
                    fontWeight: FontWeight.w600),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(
                      const BrowseCategoriesScreen()); // navigates to BrowseCategoriesScreen on tap
                },
                child: Image.asset(
                  "assets/images/seeMore.png",
                  height: 32.h,
                  width: 40.w,
                ),
              )
            ],
          ),
          SizedBox(height: 16.h), // adds 16 units of height
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(
                      const DemoQuizScreen()); // navigates to MathScreen on tap
                },
                child: Image.asset(
                  "assets/images/science.png",
                  height: 91.h,
                  width: 142.w,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(
                      const DemoQuizScreen()); // navigates to MathScreen on tap
                },
                child: Image.asset(
                  "assets/images/math.png",
                  height: 91.h,
                  width: 142.w,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(
                      const DemoQuizScreen()); // navigates to MathScreen on tap
                },
                child: Image.asset(
                  "assets/images/history.png",
                  height: 91.h,
                  width: 142.w,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(
                      const DemoQuizScreen()); // navigates to MathScreen on tap
                },
                child: Image.asset(
                  "assets/images/music.png",
                  height: 91.h,
                  width: 142.w,
                ),
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            GestureDetector(
              onTap: () {
                Get.to(
                    const DemoQuizScreen()); // navigates to MathScreen on tap
              },
              child: Image.asset(
                "assets/images/movies.png",
                height: 91.h,
                width: 142.w,
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(
                    const DemoQuizScreen()); // navigates to MathScreen on tap
              },
              child: Image.asset(
                "assets/images/sports.png",
                height: 91.h,
                width: 142.w,
              ),
            ),
          ]),
          SizedBox(height: 16.h), // adds 16 units of height
        ],
      ),
    ));
  }
}
