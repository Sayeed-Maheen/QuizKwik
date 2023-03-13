import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/appColors.dart';

class WinnerCardModel extends StatelessWidget {
  const WinnerCardModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.h,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/winnerCard.png"),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            Container(
              height: 28.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: AppColors.colorPrimaryLightest,
              ),
              child: Center(
                child: Text(
                  "This week king of the Quiz",
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.colorWhiteHighEmp,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                Image.asset(
                  "assets/images/maheeVai.png",
                  height: 48.h,
                  width: 48.w,
                ),
                SizedBox(width: 8.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Maktum Talukdar",
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: AppColors.colorWhiteHighEmp,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      "12000 diamonds",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.colorWhiteHighEmp,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
