import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizkwik/models/awaitsForYouModel.dart';
import 'package:quizkwik/models/dailyQuizCarouselModel.dart';
import 'package:quizkwik/models/exploreClassesModel.dart';
import 'package:quizkwik/models/homeScreenQuizModel.dart';
import 'package:quizkwik/models/myDrawerModel.dart';
import 'package:quizkwik/models/winnerCardModel.dart';
import 'package:quizkwik/screens/drawerScreens/redeemPointsScreen.dart';
import 'package:quizkwik/widgets/appColors.dart';
import 'package:quizkwik/widgets/myContainer.dart';

import '../models/adCarouselModel.dart';
import '../models/browseSmartModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
   
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        backgroundColor: AppColors.colorWhiteHighEmp,
        body: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.colorAppbarGradientStart,
                    AppColors.colorAppbarGradientEnd
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyDrawerModel()));
                        },
                        child: Padding(
                          padding:
                              const EdgeInsets.only(top: 45, left: 16, right: 16),
                          child: Image.asset(
                            "assets/images/profileImage.png",
                            height: 48.h,
                            width: 48.w,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 45),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Good Afternoon!",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: AppColors.colorBlackMidEmp,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "Maktum Talukdar",
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: AppColors.colorBlackHighEmp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(const RedeemPointsScreen());
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 45, right: 16),
                      child: Container(
                        height: 34.h,
                        width: 91.w,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              AppColors.colorBlueGradientStart,
                              AppColors.colorBlueGradientEnd,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(48),
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                                color: AppColors.colorPrimaryLightest,
                                blurRadius: 3),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/diamond.png",
                              height: 10.h,
                              width: 13.w,
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              "12000",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: AppColors.colorWhiteHighEmp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (overScroll) {
                  overScroll.disallowGlow();
                  return true;
                },
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    const HomeScreenQuizModel(),
                    SizedBox(height: 8.h),
                    const DailyQuizCarouselModel(),
                    SizedBox(height: 16.h),
                    const ExploreClassesModel(),
                    SizedBox(height: 16.h),
                    const WinnerCardModel(),
                    SizedBox(height: 6.h),
                    const BrowseSmartModel(),
                    const AdCarouselModel(),
                    SizedBox(height: 16.h),
                    MyContainer(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          SizedBox(height: 16.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Awaits for you",
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: AppColors.colorBlackHighEmp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Image.asset(
                                "assets/images/seeMore.png",
                                height: 32.h,
                                width: 40.w,
                              )
                            ],
                          ),
                          SizedBox(height: 16.h),
                          const AwaitForYouModel(),
                          SizedBox(height: 16.h),
                        ],
                      ),
                    )),
                    SizedBox(height: 120.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
