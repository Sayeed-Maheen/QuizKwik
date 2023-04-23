import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizkwik/models/myBottomNav.dart';
import 'package:quizkwik/widgets/myContainer.dart';

import '../../widgets/appColors.dart';
import '../../widgets/myButton.dart';

class ScoreScreen2 extends StatelessWidget {
  const ScoreScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: AppColors.colorWhiteHighEmp,
        appBar: AppBar(
          backgroundColor: AppColors.colorWhiteHighEmp,
          titleSpacing: -4,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: AppColors.colorBlackHighEmp,
              )),
          title: Text(
            'Score',
            style: TextStyle(
                fontSize: 20.sp,
                color: AppColors.colorBlackHighEmp,
                fontWeight: FontWeight.bold),
          ),
          elevation: 0,
        ),
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overScroll) {
            overScroll.disallowGlow();
            return true;
          },
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/images/score.png",
                  height: 200.h,
                  width: 380.w,
                ),
                Image.asset(
                  "assets/images/score2.png",
                  height: 125.h,
                  width: 380.w,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        "assets/images/score3.png",
                        height: 80.h,
                        width: 370.w,
                      )),
                ),
                MyContainer(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // name field
                        Text(
                          'Review Questions',
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                              color: AppColors.colorBlackHighEmp),
                        ),
                        SizedBox(height: 20.h),
                        Text(
                          '1. “1+1” equals to what in binary?',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.colorBlackHighEmp),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          'Correct Answer',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.colorBlackHighEmp),
                        ),
                        SizedBox(height: 8.h),
                        Container(
                          height: 45.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(56),
                              border: Border.all(
                                  width: 1, color: AppColors.colorSuccess)),
                          child: const Padding(
                            padding: EdgeInsets.all(16),
                            child: Text("Option 1"),
                          ),
                        ),
                        SizedBox(height: 12.h),
                        // email field
                        Text(
                          '2. “1+1” equals to what in binary?',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.colorBlackHighEmp),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          'Correct Answer',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.colorBlackHighEmp),
                        ),
                        SizedBox(height: 8.h),
                        Container(
                          height: 45.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(56),
                              border: Border.all(
                                  width: 1, color: AppColors.colorSuccess)),
                          child: const Padding(
                            padding: EdgeInsets.all(16),
                            child: Text("Option 1"),
                          ),
                        ),

                        SizedBox(height: 12.h),
                        // password field
                        Text(
                          '3. “1+1” equals to what in binary?',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.colorBlackHighEmp),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          'Correct Answer',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.colorBlackHighEmp),
                        ),
                        SizedBox(height: 8.h),
                        Container(
                          height: 45.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(56),
                              border: Border.all(
                                  width: 1, color: AppColors.colorSuccess)),
                          child: const Padding(
                            padding: EdgeInsets.all(16),
                            child: Text("Option 1"),
                          ),
                        ),

                        SizedBox(height: 12.h),
                        Text(
                          '4. “1+1” equals to what in binary?',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.colorBlackHighEmp),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          'Correct Answer',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.colorBlackHighEmp),
                        ),
                        SizedBox(height: 8.h),
                        Container(
                          height: 45.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(56),
                              border: Border.all(
                                  width: 1, color: AppColors.colorSuccess)),
                          child: const Padding(
                            padding: EdgeInsets.all(16),
                            child: Text("Option 1"),
                          ),
                        ),

                        SizedBox(height: 12.h),
                        Text(
                          '5. “1+1” equals to what in binary?',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.colorBlackHighEmp),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          'Correct Answer',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.colorBlackHighEmp),
                        ),
                        SizedBox(height: 8.h),
                        Container(
                          height: 45.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(56),
                              border: Border.all(
                                  width: 1, color: AppColors.colorSuccess)),
                          child: const Padding(
                            padding: EdgeInsets.all(16),
                            child: Text("Option 1"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 80.h,
          decoration: BoxDecoration(
            color: AppColors.colorWhiteHighEmp,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 10,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: MyButton(
              onPressed: () {
                Get.offAll(const MyBottomNav());
              },
              text: "Next",
            ),
          ),
        ),
      ),
    );
  }
}
