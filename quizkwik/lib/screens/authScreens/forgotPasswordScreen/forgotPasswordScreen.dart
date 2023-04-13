import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizkwik/models/forgotPasswordModel.dart';
import 'package:quizkwik/widgets/myContainer.dart';

import '../../../widgets/appColors.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorWhiteHighEmp,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/bg.png"))),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 200.h),
              Center(
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                      fontSize: 24.sp,
                      color: AppColors.colorBlackHighEmp,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: 4.h),
              Center(
                child: Text(
                  "Lets recover your password, its simple.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: AppColors.colorBlackHighEmp,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(height: 24.h),
              const MyContainer(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  child: ForgotPasswordModel(),
                ),
              ),
              SizedBox(height: 16.h),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
    );
  }
}
