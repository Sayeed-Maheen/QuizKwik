import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizkwik/models/dailyQuizCarouselModel.dart';
import 'package:quizkwik/models/exploreClassesModel.dart';
import 'package:quizkwik/models/homeScreenQuizModel.dart';
import 'package:quizkwik/models/winnerCardModel.dart';
import 'package:quizkwik/widgets/appColors.dart';

import '../models/adCarouselModel.dart';
import '../models/browseSmartModel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorWhiteHighEmp,
      body: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
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
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 45, left: 16, right: 16),
                        child: Image.asset(
                          "assets/images/profileImage.png",
                          height: 48.h,
                          width: 48.w,
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
                  Padding(
                    padding: const EdgeInsets.only(top: 45, right: 16),
                    child: Container(
                      height: 34.h,
                      width: 91.w,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppColors.colorBlueGradientStart,
                            AppColors.colorBlueGradientEnd,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.circular(48),
                        boxShadow: <BoxShadow>[
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
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  HomeScreenQuizModel(),
                  SizedBox(height: 8.h),
                  DailyQuizCarouselModel(),
                  SizedBox(height: 16.h),
                  ExploreClassesModel(),
                  SizedBox(height: 16.h),
                  WinnerCardModel(),
                  SizedBox(height: 6.h),
                  BrowseSmartModel(),
                  AdCarouselModel(),
                  SizedBox(height: 120.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
