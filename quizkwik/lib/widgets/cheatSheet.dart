import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'appColors.dart';

class CheatSheet extends StatelessWidget {
  const CheatSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ---- Text ----
        Text(
          "Welcome Back",
          style: TextStyle(
              fontSize: 24.sp,
              color: AppColors.colorBlackHighEmp,
              fontWeight: FontWeight.w700),
        ),

        AppBar(
          title: Text('My Gradient AppBar'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.colorAppbarGradientStart,
                  AppColors.colorAppbarGradientEnd
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          elevation: 0,
        ),
        SizedBox(width: 8.w), SizedBox(height: 24.h),
      ],
    );
  }
}
