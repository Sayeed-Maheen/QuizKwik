import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';
import 'package:quizkwik/models/profileScreenBadgeModel.dart';
import 'package:quizkwik/models/profileScreenCardModel.dart';
import 'package:quizkwik/widgets/myContainer.dart';
import 'package:quizkwik/widgets/profileScreenButton.dart';

import '../models/myBottomNav.dart';
import '../widgets/appColors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorWhiteHighEmp,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.offAll(const MyBottomNav());
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColors.colorBlackHighEmp,
          ),
        ),
        title: Text(
          'Profile',
          style: TextStyle(
              fontSize: 20.sp,
              color: AppColors.colorBlackHighEmp,
              fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(
              Icons.settings,
              color: AppColors.colorBlackHighEmp,
            ),
          )
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Stack(alignment: Alignment.center, children: [
                Image.asset(
                  "assets/images/profileImage.png",
                  height: 200.h,
                  width: 200.w,
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 32.h,
                    width: 44.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                            width: 1, color: AppColors.colorWhiteHighEmp),
                        color: AppColors.colorPrimary),
                    child: const Icon(
                      Icons.camera_alt,
                      color: AppColors.colorWhiteHighEmp,
                    ),
                  ),
                )
              ]),
            ),
            SizedBox(height: 12.h),
            Text(
              "Maktum Talukdar",
              style: TextStyle(
                  fontSize: 24.sp,
                  color: AppColors.colorBlackHighEmp,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 4.h),
            SizedBox(
              height: 22.h,
              width: 120.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "LVL:",
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: AppColors.colorError,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "500",
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: AppColors.colorError,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h),
            MyContainer(
              child: GFProgressBar(
                percentage: 0.4,
                lineHeight: 25,
                trailing: Padding(
                  padding: const EdgeInsets.only(right: 11),
                  child: Text(
                    "6,049xp / 1 20,980xp",
                    style: TextStyle(
                        color: AppColors.colorBlackHighEmp, fontSize: 10.sp),
                  ),
                ),
                backgroundColor: Colors.white70,
                linearGradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.colorProgressBarGradientStart,
                    AppColors.colorProgressBarGradientEnd
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 20, top: 6),
                  child: Text(
                    'Next LVL',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 10,
                        color: AppColors.colorWhiteHighEmp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.h),
            const ProfileScreenCardModel(),
            SizedBox(height: 24.h),
            MyContainer(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "My Badges",
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: AppColors.colorBlackHighEmp,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 16.h),
                  const ProfileScreenBadgeModel(),
                  SizedBox(height: 4.h),
                ],
              ),
            )),
            SizedBox(height: 24.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ProfileScreenButton(
                  onPressed: () {}, text: "Redeem Your Points"),
            ),
            SizedBox(height: 100.h),
          ],
        ),
      ),
    );
  }
}
