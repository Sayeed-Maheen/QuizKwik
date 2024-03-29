import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizkwik/models/signInFormModel.dart';
import 'package:quizkwik/screens/authScreens/signUpScreen/signUpScreen.dart';
import 'package:quizkwik/widgets/myContainer.dart';

import '../../models/myBottomNav.dart';
import '../../widgets/appColors.dart';
import '../../widgets/constant.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen>
    with SingleTickerProviderStateMixin {
  TextEditingController passwordController = TextEditingController();
  final double _textOpacity = 1.0;
  final double _cardOpacity = 0.0;
  late AnimationController _animationController;
  late Animation<double> _textAnimation;
  late Animation<double> _cardAnimation;
  late ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    _textAnimation = Tween<double>(begin: _textOpacity, end: 0.0)
        .animate(_animationController);
    _cardAnimation = Tween<double>(begin: _cardOpacity, end: 1.0)
        .animate(_animationController);
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _animationController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.offset <= 90) {
      _animationController.value = (_scrollController.offset / 50);
    }
  }

  @override
  Widget build(BuildContext context) {

    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: AppColors.colorWhiteHighEmp,
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage("assets/images/bg.png"))),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 120.h),
                  FadeTransition(
                    opacity: _textAnimation ??
                        AlwaysStoppedAnimation<double>(_textOpacity),
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            welcome,
                            style: TextStyle(
                                fontSize: 24.sp,
                                color: AppColors.colorBlackHighEmp,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Center(
                          child: Text(
                            quizPlace,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: AppColors.colorBlackHighEmp,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24.h),
                  const MyContainer(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                      child: SignInFormModel(),
                    ),
                  ),
                  SizedBox(height: 16.h),
                  MyContainer(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 24),
                      child: Column(
                        children: [
                          Text(
                            continueWith,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.colorBlackLowEmp,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.offAll(const MyBottomNav());
                                },
                                child: Container(
                                  height: 40.h,
                                  width: 114.w,
                                  decoration: BoxDecoration(
                                      color: AppColors.colorWhiteHighEmp,
                                      border: Border.all(
                                          color: AppColors.colorWhiteLowEmp),
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 20.h,
                                        width: 20.w,
                                        child: Image.asset(
                                            'assets/images/google.png'),
                                      ),
                                      SizedBox(width: 12.w),
                                      Text(
                                        "Google",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          color: AppColors.colorBlackLowEmp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 11.w),
                              GestureDetector(
                                onTap: () {
                                  Get.offAll(const MyBottomNav());
                                },
                                child: Container(
                                  height: 40.h,
                                  width: 114.w,
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: AppColors.colorWhiteHighEmp,
                                      border: Border.all(
                                          color: AppColors.colorWhiteLowEmp),
                                      borderRadius: BorderRadius.circular(100)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 20.h,
                                        width: 20.w,
                                        child: Image.asset(
                                            'assets/images/facebook.png'),
                                      ),
                                      SizedBox(width: 12.w),
                                      Text(
                                        "Facebook",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          color: AppColors.colorBlackLowEmp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                dontHaveAccount,
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: AppColors.colorBlackHighEmp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Get.to(() => const SignUpScreen());
                                },
                                style: TextButton.styleFrom(
                                    padding: const EdgeInsets.all(5),
                                    minimumSize: const Size(50, 20),
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    alignment: Alignment.centerLeft),
                                child: Text(
                                  signUp,
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.colorPrimary,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          ),
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
