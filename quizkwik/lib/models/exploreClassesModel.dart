import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizkwik/widgets/myContainer.dart';

import '../widgets/appColors.dart';

class ExploreClassesModel extends StatelessWidget {
  const ExploreClassesModel({Key? key}) : super(key: key);

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
                "Explore Classes",
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
              Container(
                height: 57.5.h,
                width: 144.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/class6.png"),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Class 6",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColors.colorWhiteHighEmp,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        "12 Quiz",
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColors.colorWhiteMidEmp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 57.5.h,
                width: 144.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/class7.png"),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Class 7",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColors.colorWhiteHighEmp,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        "17 Quiz",
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColors.colorWhiteMidEmp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 2.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 57.5.h,
                width: 144.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/class8.png"),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Class 8",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColors.colorWhiteHighEmp,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        "8 Quiz",
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColors.colorWhiteMidEmp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 57.5.h,
                width: 144.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/class9.png"),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Class 9",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: AppColors.colorWhiteHighEmp,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 2.h),
                      Text(
                        "21 Quiz",
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColors.colorWhiteMidEmp,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
        ],
      ),
    ));
  }
}
