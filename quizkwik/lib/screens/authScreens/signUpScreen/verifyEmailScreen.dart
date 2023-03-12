import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizkwik/models/otpModel.dart';

import '../../../widgets/appColors.dart';
import '../../../widgets/myContainer.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorWhiteHighEmp,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/bg.png"))),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 200.h),
              Center(
                child: Text(
                  "Verify your email address",
                  style: TextStyle(
                      fontSize: 24.sp,
                      color: AppColors.colorBlackHighEmp,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: 8.h),
              Center(
                child: Text(
                  "Enter 6 digit verification sent to your email\n account",
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
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                    child: Column(
                      children: [
                        OtpModel(),
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
    );
  }
}
