import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizkwik/models/myBottomNav.dart';
import 'package:quizkwik/screens/mathScreen.dart';

import '../widgets/appColors.dart';

class BrowseCategoriesScreen extends StatefulWidget {
  const BrowseCategoriesScreen({Key? key}) : super(key: key);

  @override
  State<BrowseCategoriesScreen> createState() => _BrowseCategoriesScreenState();
}

class _BrowseCategoriesScreenState extends State<BrowseCategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                height: 100.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.colorBlueGradientStart,
                      AppColors.colorBlueGradientEnd
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 50),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.offAll(MyBottomNav());
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: AppColors.colorWhiteHighEmp,
                          )),
                      SizedBox(width: 8.w),
                      Text(
                        'Browse Categories',
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: AppColors.colorWhiteHighEmp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  margin: EdgeInsets.only(top: 100),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: 600.h,
                  decoration: BoxDecoration(
                      color: AppColors.colorWhiteHighEmp,
                      borderRadius: BorderRadius.circular(24)),
                  child: Column(
                    children: [
                      SizedBox(height: 16.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/science.png",
                            height: 91.h,
                            width: 158.w,
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(MathScreen());
                            },
                            child: Image.asset(
                              "assets/images/math.png",
                              height: 91.h,
                              width: 158.w,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 12.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/history.png",
                            height: 91.h,
                            width: 158.w,
                          ),
                          Image.asset(
                            "assets/images/music.png",
                            height: 91.h,
                            width: 158.w,
                          )
                        ],
                      ),
                      SizedBox(height: 12.h),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/images/movies.png",
                              height: 91.h,
                              width: 158.w,
                            ),
                            Container(
                                height: 91.h,
                                width: 158.w,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/sports.png",
                                    ),
                                  ),
                                ))
                          ]),
                      SizedBox(height: 16.h),
                    ],
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}