import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../models/myBottomNav.dart';
import '../../widgets/appColors.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.offAll(const MyBottomNav());
        return false;
      },
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                height: 100.h,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.colorBlueGradientStart,
                      AppColors.colorBlueGradientEnd
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 35, bottom: 35),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.offAll(const MyBottomNav());
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: AppColors.colorWhiteHighEmp,
                          )),
                      SizedBox(width: 8.w),
                      Text(
                        'Privacy Policy',
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: AppColors.colorWhiteHighEmp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                child: Container(
                    margin: const EdgeInsets.only(top: 90),
                    height: 600.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.colorWhiteHighEmp,
                        borderRadius: BorderRadius.circular(24)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: NotificationListener<OverscrollIndicatorNotification>(
                        onNotification: (overScroll){
                          overScroll.disallowGlow();
                          return true;
                        },
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 24.h),
                              Center(
                                child: Text(
                                  "QuizKwik is committed to protecting your personal\ninformation. Here is how we collect, use, and protect your\ninformation:",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: AppColors.colorPrimary,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                "Information We Collect:",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.colorBlackHighEmp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    "\u2022",
                                    style: TextStyle(
                                      fontSize: 25.sp,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    "We don't sell or rent your personal information",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: AppColors.colorBlackHighEmp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    "\u2022",
                                    style: TextStyle(
                                      fontSize: 25.sp,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    "Device Information (device type, OS, technical details)",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: AppColors.colorBlackHighEmp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    "\u2022",
                                    style: TextStyle(
                                      fontSize: 25.sp,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    "Usage Information (how you use our app)",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: AppColors.colorBlackHighEmp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                "Information We Collect:",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.colorBlackHighEmp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    "\u2022",
                                    style: TextStyle(
                                      fontSize: 25.sp,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    "Create and maintain your account",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: AppColors.colorBlackHighEmp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    "\u2022",
                                    style: TextStyle(
                                      fontSize: 25.sp,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    "Provide you with access to our app and features",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: AppColors.colorBlackHighEmp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    "\u2022",
                                    style: TextStyle(
                                      fontSize: 25.sp,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    "Personalize your experience and provide targeted\n advertising",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: AppColors.colorBlackHighEmp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    "\u2022",
                                    style: TextStyle(
                                      fontSize: 25.sp,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    "Communicate with you about our app and other products/\nservices",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: AppColors.colorBlackHighEmp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    "\u2022",
                                    style: TextStyle(
                                      fontSize: 25.sp,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    "Improve our app and its features",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: AppColors.colorBlackHighEmp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                "Sharing Your Information:",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.colorBlackHighEmp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    "\u2022",
                                    style: TextStyle(
                                      fontSize: 25.sp,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    "We don't sell or rent your personal information",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: AppColors.colorBlackHighEmp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    "\u2022",
                                    style: TextStyle(
                                      fontSize: 25.sp,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    "We may share your info with third-party service providers",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: AppColors.colorBlackHighEmp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    "\u2022",
                                    style: TextStyle(
                                      fontSize: 25.sp,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    "We may share your info when required by law or to protect\n our rights or the rights of others",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: AppColors.colorBlackHighEmp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                "Security:",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.colorBlackHighEmp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    "\u2022",
                                    style: TextStyle(
                                      fontSize: 25.sp,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    "We take reasonable measures to protect your personal\n information",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: AppColors.colorBlackHighEmp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                "Changes to this Policy:",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.colorBlackHighEmp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    "\u2022",
                                    style: TextStyle(
                                      fontSize: 25.sp,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    "We may update this policy and will notify you of any material\n changes",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: AppColors.colorBlackHighEmp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                "Contact Us:",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.colorBlackHighEmp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    "\u2022",
                                    style: TextStyle(
                                      fontSize: 25.sp,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        color: AppColors.colorBlackHighEmp,
                                      ),
                                      children: const [
                                        TextSpan(
                                          text:
                                              "If you have any questions or concerns, please contact us at\n",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "privacy@quizkwik.com",
                                          style: TextStyle(
                                            decoration: TextDecoration.underline,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.h),
                              Text(
                                "Effective Date: [31/12/23]",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.colorBlackHighEmp,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 20.h),
                            ],
                          ),
                        ),
                      ),
                    )),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
