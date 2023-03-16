import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/appColors.dart';

class ProfileScreenCardModel extends StatelessWidget {
  const ProfileScreenCardModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 86.h,
              width: 101.33.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  colors: [
                    AppColors.colorBlueGradientStart,
                    AppColors.colorBlueGradientEnd,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: AppColors.colorPrimaryLightest, blurRadius: 10),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.language,
                    color: AppColors.colorWhiteHighEmp,
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    "Rank",
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.colorWhiteHighEmp,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    "428",
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.colorWhiteHighEmp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(width: 13.w),
            Container(
              height: 86.h,
              width: 101.33.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  colors: [
                    AppColors.colorCard2GradientStart,
                    AppColors.colorCard2GradientEnd,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: AppColors.colorSecondaryLightest, blurRadius: 10),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.diamond,
                    color: AppColors.colorWhiteHighEmp,
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    "Points",
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.colorWhiteHighEmp,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    "12000",
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.colorWhiteHighEmp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(width: 13.w),
            Container(
              height: 86.h,
              width: 101.33.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                  colors: [
                    AppColors.colorCard3GradientStart,
                    AppColors.colorCard3GradientEnd,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(color: Colors.green.shade200, blurRadius: 10),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.quiz,
                    color: AppColors.colorWhiteHighEmp,
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    "Created Quiz",
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.colorWhiteHighEmp,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    "20",
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.colorWhiteHighEmp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
