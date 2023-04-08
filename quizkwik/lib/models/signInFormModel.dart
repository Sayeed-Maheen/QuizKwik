import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizkwik/models/myBottomNav.dart';
import 'package:quizkwik/models/rememberMeModel.dart';

import '../screens/authScreens/forgotPasswordScreen/forgotPasswordScreen.dart';
import '../widgets/appColors.dart';
import '../widgets/myButton.dart';

class SignInFormModel extends StatefulWidget {
  const SignInFormModel({Key? key}) : super(key: key);

  @override
  State<SignInFormModel> createState() => _SignInFormModelState();
}

class _SignInFormModelState extends State<SignInFormModel> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formfield,
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
            child: SizedBox(
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
                  return null;
                },
                style: const TextStyle(color: AppColors.colorBlackHighEmp),
                decoration: InputDecoration(
                  hintText: 'mail@example.com',
                  hintStyle: TextStyle(
                      color: AppColors.colorBlackLowEmp,
                      fontWeight: FontWeight.w300,
                      fontSize: 12.sp),
                  contentPadding: const EdgeInsets.fromLTRB(16, 20, 16, 15),
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
                      width: 1,
                    ),
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
            'Your Password',
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
                style: const TextStyle(color: AppColors.colorBlackHighEmp),
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
                            color: AppColors.colorPrimary, size: 20)
                        : const Icon(Icons.visibility_outlined,
                            color: AppColors.colorPrimary, size: 20),
                  ),
                  contentPadding: const EdgeInsets.fromLTRB(16, 20, -6, 15),
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
                        color: AppColors.colorWhiteLowEmp, width: 1),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const RememberMeModel(),
              GestureDetector(
                onTap: () {
                  Get.to(() => const ForgotPasswordScreen());
                },
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.colorPrimaryDark),
                ),
              ),
            ],
          ),
          MyButton(
              onPressed: () {
                if (_formfield.currentState!.validate()) {
                  emailController.clear();
                  passwordController.clear();
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const MyBottomNav()));
                }
              },
              text: "Sign In")
        ],
      ),
    );
  }
}
