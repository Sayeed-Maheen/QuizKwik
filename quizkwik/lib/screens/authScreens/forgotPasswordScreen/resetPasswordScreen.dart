import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizkwik/models/forgotPasswordOtpPopupModel.dart';
import 'package:quizkwik/widgets/myContainer.dart';

import '../../../widgets/appColors.dart';
import '../../../widgets/constant.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _formfield = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final passwordController2 = TextEditingController();
  var obscureText = true;
  var visibleText = true;
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
              image: DecorationImage(image: AssetImage("assets/images/bg.png"))),
          child: SingleChildScrollView(
            child: Form(
              key: _formfield,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 200.h),
                  Center(
                    child: Text(
                      "Reset password",
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Create Password',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.colorBlackHighEmp),
                          ),
                          SizedBox(height: 8.h),
                          Center(
                            child: SizedBox(
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
                                style: const TextStyle(
                                    color: AppColors.colorBlackHighEmp),
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
                                        ? const Icon(Icons.visibility_off,
                                            color: AppColors.colorPrimary,
                                            size: 20)
                                        : const Icon(Icons.visibility_outlined,
                                            color: AppColors.colorPrimary,
                                            size: 20),
                                  ),
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(16, 20, -6, 15),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(56),
                                    borderSide: const BorderSide(
                                      color: AppColors.colorWhiteLowEmp,
                                      width: 1,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(56),
                                    borderSide: const BorderSide(
                                        color: AppColors.colorWhiteLowEmp,
                                        width: 1),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(56),
                                    borderSide: const BorderSide(
                                      color: AppColors.colorError,
                                      width: 1,
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(56),
                                    borderSide: const BorderSide(
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
                            child: SizedBox(
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
                                style: const TextStyle(
                                    color: AppColors.colorBlackHighEmp),
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
                                        ? const Icon(Icons.visibility_off,
                                            color: AppColors.colorPrimary,
                                            size: 20)
                                        : const Icon(Icons.visibility_outlined,
                                            color: AppColors.colorPrimary,
                                            size: 20),
                                  ),
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(16, 20, -6, 15),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(56),
                                    borderSide: const BorderSide(
                                      color: AppColors.colorWhiteLowEmp,
                                      width: 1,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(56),
                                    borderSide: const BorderSide(
                                        color: AppColors.colorWhiteLowEmp,
                                        width: 1),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(56),
                                    borderSide: const BorderSide(
                                      color: AppColors.colorError,
                                      width: 1,
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(56),
                                    borderSide: const BorderSide(
                                      color: AppColors.colorError,
                                      width: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.h),
                          const ForgotPasswordOtpPopupModel()
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
