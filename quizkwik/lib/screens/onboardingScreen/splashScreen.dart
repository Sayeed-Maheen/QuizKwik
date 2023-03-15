import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quizkwik/screens/onboardingScreen/onboardingScreen.dart';
import 'package:quizkwik/widgets/appColors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) {
      Get.off(() => OnBoardingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/splashBG.jpeg"))),
        width: double.infinity,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('assets/images/appLogo.png', height: 120.h, width: 107.w),
          SizedBox(height: 16.h),
          Image.asset('assets/images/QuizKwik.png', height: 40.h, width: 142.w),
          SizedBox(height: 8.h),
          Text(
            "WORLD'S BEST QUIZ APP",
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w300,
                color: AppColors.colorDisabled,
                letterSpacing: 2),
          ),
        ]),
      ),
    );
  }
}
