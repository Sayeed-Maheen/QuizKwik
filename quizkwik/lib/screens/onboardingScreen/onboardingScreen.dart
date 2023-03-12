import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/appColors.dart';
import '../../models/onboardingScreenModel.dart';
import '../authScreens/signInScreen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentIndex = 0;

  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/onboardingBG.png"),
                fit: BoxFit.cover)),
        child: Stack(alignment: Alignment.center, children: [
          PageView.builder(
              controller: _controller,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemCount: contents.length,
              itemBuilder: (_, i) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      SizedBox(height: 50.h),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          contents[i].title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColors.colorWhiteHighEmp,
                              fontSize: 36.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Text(
                          contents[i].discription,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColors.colorWhiteHighEmp,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(height: 24.h),
                      Visibility(
                        visible: currentIndex == contents.length - 1,
                        child: Container(
                          height: 50.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(48),
                            color: AppColors.colorBlackHighEmp,
                          ),
                          child: MaterialButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => SignInScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "Let's Start",
                              style: TextStyle(
                                color: AppColors.colorWhiteHighEmp,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        replacement: Container(
                          height: 52.h,
                          width: 58.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: AppColors.colorBlackHighEmp,
                          ),
                          child: MaterialButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onPressed: () {
                              _controller.nextPage(
                                duration: Duration(milliseconds: 100),
                                curve: Curves.bounceIn,
                              );
                            },
                            child: Icon(Icons.arrow_forward,
                                color: AppColors.colorWhiteHighEmp),
                          ),
                        ),
                      ),
                      SizedBox(height: 38.h),
                      Container(
                          child: Image.asset(
                        contents[i].image,
                        height: 353.h,
                        width: double.infinity,
                      )),
                    ],
                  ),
                );
              }),
          Positioned(
            bottom: 30,
            child: Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context),
              ),
            )),
          ),
        ]),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
        height: currentIndex == index ? 7.h : 3.h,
        margin: EdgeInsets.all(3),
        width: currentIndex == index ? 24.w : 24.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: currentIndex == index
              ? AppColors.colorBlackHighEmp
              : AppColors.colorPrimaryLightest,
        ));
  }
}
