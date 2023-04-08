import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizkwik/screens/browseCategoriesScreen.dart';
import 'package:quizkwik/screens/mathScreen.dart';
import 'package:quizkwik/widgets/myContainer.dart';

import '../widgets/appColors.dart';

class JoinQuizBrowseModel extends StatelessWidget {
  const JoinQuizBrowseModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyContainer(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Browse More!",
                style: TextStyle(
                    fontSize: 20.sp,
                    color: AppColors.colorBlackHighEmp,
                    fontWeight: FontWeight.w600),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(const BrowseCategoriesScreen());
                },
                child: Image.asset(
                  "assets/images/seeMore.png",
                  height: 32.h,
                  width: 40.w,
                ),
              )
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/images/science.png",
                height: 91.h,
                width: 142.w,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(const MathScreen());
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
              Image.asset(
                "assets/images/history.png",
                height: 91.h,
                width: 142.w,
              ),
              Image.asset(
                "assets/images/music.png",
                height: 91.h,
                width: 142.w,
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Image.asset(
              "assets/images/movies.png",
              height: 91.h,
              width: 142.w,
            ),
            Container(
                height: 91.h,
                width: 142.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/sports.png",
                    ),
                  ),
                ))
          ]),
          SizedBox(height: 16.h),
        ],
      ),
    ));
  }
}
