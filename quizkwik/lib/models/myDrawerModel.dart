import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizkwik/screens/drawerScreens/notificationScreen.dart';
import 'package:quizkwik/screens/drawerScreens/profileSettingsScreen.dart';
import 'package:quizkwik/screens/earnPointsScreen.dart';

import '../screens/drawerScreens/privacyPolicyScreen.dart';
import '../widgets/appColors.dart';

class MyDrawerModel extends StatelessWidget {
  const MyDrawerModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Container(
          color: AppColors.colorWhiteHighEmp,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (overScroll) {
                overScroll.disallowGlow();
                return true;
              },
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 126.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.colorPrimary),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/images/profileImage.png",
                              height: 72.h, width: 72.w),
                          SizedBox(height: 8.h),
                          Text(
                            "Maktum Talukdar",
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: AppColors.colorWhiteHighEmp,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24.h),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.colorWhiteLowEmp,
                            borderRadius: BorderRadius.circular(12)),
                        width: 300.w,
                        child: TextFormField(
                          style: const TextStyle(
                              color: AppColors.colorPrimaryLighter),
                          decoration: InputDecoration(
                            hintText: 'Math, Science, anything...',
                            hintStyle: TextStyle(
                                color: AppColors.colorPrimaryLighter,
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp),
                            suffixIcon: const Icon(Icons.search,
                                color: AppColors.colorPrimary),
                            contentPadding:
                                const EdgeInsets.fromLTRB(16, 20, -6, 15),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: AppColors.colorWhiteLowEmp,
                                width: 1,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: AppColors.colorWhiteLowEmp,
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 24.h),

                    // Profile settings
                    GestureDetector(
                      onTap: () {
                        Get.to(const ProfileSettingsScreen());
                      },
                      child: Row(
                        children: [
                          const Icon(Icons.settings,
                              color: AppColors.colorPrimary),
                          SizedBox(width: 8.w),
                          Text(
                            "Profile Settings",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: AppColors.colorBlackHighEmp,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    const Divider(height: 2),
                    SizedBox(height: 20.h),

                    // Notification
                    GestureDetector(
                      onTap: () {
                        Get.to(const NotificationScreen());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.notifications,
                                  color: AppColors.colorPrimary),
                              SizedBox(width: 8.w),
                              Text(
                                "Notification",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: AppColors.colorBlackHighEmp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          CircleAvatar(
                            radius: 10,
                            backgroundColor: AppColors.colorAlert,
                            child: Text(
                              "8",
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: AppColors.colorWhiteHighEmp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    const Divider(height: 2),
                    SizedBox(height: 20.h),
                    GestureDetector(
                      onTap: () {
                        Get.to(const EarnPointsScreen());
                      },
                      child: Row(
                        children: [
                          const Icon(Icons.diamond,
                              color: AppColors.colorPrimary),
                          SizedBox(width: 8.w),
                          Text(
                            "Earn Points",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: AppColors.colorBlackHighEmp,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    const Divider(height: 2),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        const Icon(Icons.redeem, color: AppColors.colorPrimary),
                        SizedBox(width: 8.w),
                        Text(
                          "Redeem Points",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: AppColors.colorBlackHighEmp,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    const Divider(height: 2),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        const Icon(Icons.emoji_events,
                            color: AppColors.colorPrimary),
                        SizedBox(width: 8.w),
                        Text(
                          "Leader Board",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: AppColors.colorBlackHighEmp,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    const Divider(height: 2),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        const Icon(Icons.military_tech,
                            color: AppColors.colorPrimary),
                        SizedBox(width: 8.w),
                        Text(
                          "Achievements",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: AppColors.colorBlackHighEmp,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    const Divider(height: 2),
                    SizedBox(height: 20.h),
                    GestureDetector(
                      onTap: () {
                        Get.offAll(const PrivacyPolicyScreen());
                      },
                      child: Row(
                        children: [
                          const Icon(Icons.policy,
                              color: AppColors.colorPrimary),
                          SizedBox(width: 8.w),
                          Text(
                            "Privacy & Policy",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: AppColors.colorBlackHighEmp,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    const Divider(height: 2),
                    SizedBox(height: 20.h),
                    Row(
                      children: [
                        const Icon(Icons.logout, color: AppColors.colorPrimary),
                        SizedBox(width: 8.w),
                        Text(
                          "Log Out",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: AppColors.colorBlackHighEmp,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
