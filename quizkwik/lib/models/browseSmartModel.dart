import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          SizedBox(height: 16.h),
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
              Image.asset(
                "assets/images/seeMore.png",
                height: 32.h,
                width: 40.w,
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
              Image.asset(
                "assets/images/math.png",
                height: 91.h,
                width: 142.w,
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
                decoration: BoxDecoration(
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
