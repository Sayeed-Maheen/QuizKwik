import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizkwik/screens/authScreens/signUpScreen/verifyEmailScreen.dart';

import '../widgets/appColors.dart';
import '../widgets/myButton.dart';

class SignUpFormModel extends StatefulWidget {
  const SignUpFormModel({Key? key}) : super(key: key);

  @override
  State<SignUpFormModel> createState() => _SignUpFormModelState();
}

class _SignUpFormModelState extends State<SignUpFormModel> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordController2 = TextEditingController();

  var obscureText = true;
  var visibleText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formfield,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Name',
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
                  controller: nameController,
                  style: TextStyle(color: AppColors.colorBlackHighEmp),
                  decoration: InputDecoration(
                    hintText: 'Name',
                    hintStyle: TextStyle(
                        color: AppColors.colorBlackLowEmp,
                        fontWeight: FontWeight.w300,
                        fontSize: 12.sp),
                    contentPadding: EdgeInsets.fromLTRB(16, 20, 16, 15),
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
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.h),
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
                    contentPadding: EdgeInsets.fromLTRB(16, 20, 16, 15),
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
            Text(
              'Create Password',
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
                  controller: passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Password";
                    } else if (passwordController.text.length < 6) {
                      return "Password length should be more than 6 characters";
                    }
                  },
                  style: TextStyle(color: AppColors.colorBlackHighEmp),
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        color: AppColors.colorBlackLowEmp,
                        fontWeight: FontWeight.w300,
                        fontSize: 12.sp),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      child: obscureText
                          ? Icon(Icons.visibility_off,
                              color: AppColors.colorPrimary, size: 20)
                          : Icon(Icons.visibility_outlined,
                              color: AppColors.colorPrimary, size: 20),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(16, 20, -6, 15),
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
                          color: AppColors.colorWhiteLowEmp, width: 1),
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
            Text(
              'Rewrite Password',
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
                  controller: passwordController2,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Password";
                    } else if (passwordController.text.length < 6) {
                      return "Password length should be more than 6 characters";
                    }
                  },
                  style: TextStyle(color: AppColors.colorBlackHighEmp),
                  obscureText: visibleText,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        color: AppColors.colorBlackLowEmp,
                        fontWeight: FontWeight.w300,
                        fontSize: 12.sp),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          visibleText = !visibleText;
                        });
                      },
                      child: visibleText
                          ? Icon(Icons.visibility_off,
                              color: AppColors.colorPrimary, size: 20)
                          : Icon(Icons.visibility_outlined,
                              color: AppColors.colorPrimary, size: 20),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(16, 20, -6, 15),
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
                          color: AppColors.colorWhiteLowEmp, width: 1),
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
            SizedBox(height: 16.h),
            MyButton(
                onPressed: () {
                  if (_formfield.currentState!.validate()) {
                    emailController.clear();
                    passwordController.clear();
                    passwordController2.clear();
                    Get.off(() => VerifyEmailScreen());
                  }
                },
                text: "Sign Up")
          ],
        ),
      ),
    );
  }
}
