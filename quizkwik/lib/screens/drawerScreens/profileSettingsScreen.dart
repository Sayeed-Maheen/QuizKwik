import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizkwik/models/myBottomNav.dart';
import 'package:quizkwik/models/profileSettingsScreenModel.dart';

import '../../widgets/appColors.dart';

class ProfileSettingsScreen extends StatelessWidget {
  const ProfileSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.offAll(MyBottomNav());
        return false;
      },
      child: Scaffold(
        backgroundColor: AppColors.colorWhiteHighEmp,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.offAll(MyBottomNav());
            },
            icon: Icon(
              Icons.arrow_back,
              color: AppColors.colorBlackHighEmp,
            ),
          ),
          title: Text(
            'Profile Settings',
            style: TextStyle(
                fontSize: 20.sp,
                color: AppColors.colorBlackHighEmp,
                fontWeight: FontWeight.bold),
          ),
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
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 12.h),
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
                        child: Icon(
                          Icons.camera_alt,
                          color: AppColors.colorWhiteHighEmp,
                        ),
                      ),
                    )
                  ]),
                ),
                SizedBox(height: 20.h),
                ProfileSettingsScreenModel(),
                SizedBox(height: 20.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
