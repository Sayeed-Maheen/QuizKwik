import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizkwik/models/awaitsForYouModel.dart';
import 'package:quizkwik/models/dailyQuizCarouselModel.dart';
import 'package:quizkwik/models/exploreClassesModel.dart';
import 'package:quizkwik/models/homeScreenQuizModel.dart';
import 'package:quizkwik/models/myBottomNav.dart';
import 'package:quizkwik/models/myDrawerModel.dart';
import 'package:quizkwik/models/winnerCardModel.dart';
import 'package:quizkwik/widgets/appColors.dart';
import 'package:quizkwik/widgets/myContainer.dart';

import '../models/adCarouselModel.dart';
import '../models/browseSmartModel.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: AppColors.colorWhiteHighEmp,
      drawer: MyDrawerModel(),
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
                      GestureDetector(
                        onTap: () {
                          _globalKey.currentState!.openDrawer();
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 45, left: 16, right: 16),
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
                        AwaitForYouModel(),
                        SizedBox(height: 16.h),
                      ],
                    ),
                  )),
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

Route _createRoute() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => MyBottomNav(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(-.5, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeIn;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      });
}
