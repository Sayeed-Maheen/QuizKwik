import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizkwik/models/otpModel.dart';

import '../../../widgets/appColors.dart';
import '../../../widgets/constant.dart';
import '../../../widgets/myContainer.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: AppColors.colorWhiteHighEmp,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("assets/images/bg.png"))),
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (overScroll) {
              overScroll.disallowGlow();
              return true;
            },
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 200.h),
                  Center(
                    child: Text(
                      verifyEmail,
                      style: TextStyle(
                          fontSize: 24.sp,
                          color: AppColors.colorBlackHighEmp,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Center(
                    child: Text(
                      enterCode,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.colorBlackHighEmp,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(height: 24.h),
                  MyContainer(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 24),
                        child: Column(
                          children: [
                            const OtpModel(),
                            SizedBox(height: 16.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Didn’t get any code?",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: AppColors.colorBlackMidEmp,
                                      fontWeight: FontWeight.w400),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Resend",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: AppColors.colorPrimary,
                                          fontWeight: FontWeight.w600),
                                    ))
                              ],
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
