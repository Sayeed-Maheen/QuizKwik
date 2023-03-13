import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/appColors.dart';

class AdCarouselModel extends StatefulWidget {
  const AdCarouselModel({Key? key}) : super(key: key);

  @override
  State<AdCarouselModel> createState() => _AdCarouselModelState();
}

class _AdCarouselModelState extends State<AdCarouselModel> {
  List<String> images = [
    "assets/images/spinBanner.png",
    "assets/images/videoBanner.png",
  ];

  List<String> titles = [
    "SPIN\nTO WIN",
    "Watch videos earn\nmore points.",
  ];
  List<String> titles2 = [
    "Try your luck",
    "Watch & earn",
  ];
  List<String> titles3 = [
    "Spin Now",
    "Watch Video",
  ];

  int currentIndex = 0;
  final PageController controller = PageController();
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 2), (timer) {
      if (currentIndex == images.length - 1) {
        currentIndex = 0;
        controller.animateToPage(
          currentIndex,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        currentIndex++;
        controller.nextPage(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 160.h,
            width: double.infinity,
            child: PageView.builder(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index % images.length;
                });
              },
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16, left: 16),
                      child: SizedBox(
                        height: 160.h,
                        width: double.infinity,
                        child: Center(
                          child: Image.asset(
                            images[index % images.length],
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 24,
                      left: 22,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        child: Text(
                          titles[index % images.length],
                          style: TextStyle(
                            color: index == 0
                                ? AppColors.colorWhiteHighEmp
                                : Colors.black,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 85,
                      left: 22,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        child: Text(
                          titles2[index % images.length],
                          style: TextStyle(
                            color: index == 0
                                ? AppColors.colorWhiteHighEmp
                                : Colors.black,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 120,
                      left: 38,
                      child: Container(
                        height: 28.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                          color: AppColors.colorWhiteHighEmp,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Center(
                          child: Text(
                            titles3[index % images.length],
                            style: TextStyle(
                                fontSize: 10.sp,
                                color: AppColors.colorBlackHighEmp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < images.length; i++)
                buildIndicator(currentIndex == i)
            ],
          ),
        ],
      ),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Container(
      margin: EdgeInsets.all(2),
      height: isSelected ? 8 : 8,
      width: isSelected ? 24 : 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: isSelected
            ? AppColors.colorPrimary
            : AppColors.colorIndicatorUnselected,
      ),
    );
  }
}
