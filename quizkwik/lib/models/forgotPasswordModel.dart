import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizkwik/screens/authScreens/forgotPasswordScreen/forgotPasswordVerifyEmailScreen.dart';

import '../widgets/appColors.dart';
import '../widgets/myButton.dart';

class ForgotPasswordModel extends StatefulWidget {
  const ForgotPasswordModel({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordModel> createState() => _ForgotPasswordModelState();
}

class _ForgotPasswordModelState extends State<ForgotPasswordModel> {
  final emailController = TextEditingController();

  var obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Email',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.colorBlackHighEmp),
            ),
            SizedBox(height: 8.h),
            Center(
              child: Container(
                width: 300.w,
                child: TextFormField(
                  controller: emailController,
                  validator: (value) {
                    bool emailValid = RegExp(
                            r"^WS{1,2}:\/\/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}:56789")
                        .hasMatch(value!);
                    if (value.isEmpty) {
                      return "Enter Email";
                    } else if (emailValid) {
                      return "Enter valid Email";
                    }
                  },
                  style: TextStyle(color: AppColors.colorBlackHighEmp),
                  decoration: InputDecoration(
                    hintText: 'mail@example.com',
                    hintStyle: TextStyle(
                        color: AppColors.colorBlackLowEmp,
                        fontWeight: FontWeight.w300,
                        fontSize: 12.sp),
                    contentPadding: EdgeInsets.fromLTRB(16, 20, 20, 15),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(56),
                      borderSide: BorderSide(
                        color: AppColors.colorWhiteLowEmp,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(56),
                      borderSide: BorderSide(
                        color: AppColors.colorWhiteLowEmp,
                        width: 1,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(56),
                      borderSide: BorderSide(
                        color: AppColors.colorError,
                        width: 1,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(56),
                      borderSide: BorderSide(
                        color: AppColors.colorError,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.h),
            MyButton(
                onPressed: () {
                  Get.off(ForgotPasswordVerifyEmailScreen());
                },
                text: "Find")
          ],
        ),
      ),
    );
  }
}
