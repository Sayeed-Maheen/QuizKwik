import 'dart:async'; // Required for Timer class

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Required for responsive design
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizkwik/screens/spinWheelScreen.dart';

import '../widgets/appColors.dart'; // Custom colors

class AdCarouselModel extends StatefulWidget {
  const AdCarouselModel({Key? key}) : super(key: key);

  @override
  State<AdCarouselModel> createState() => _AdCarouselModelState();
}

class _AdCarouselModelState extends State<AdCarouselModel> {
  // Images to display in the carousel
  List<String> images = [
    "assets/images/spinBanner.png",
    "assets/images/videoBanner.png",
  ];

  // Titles to display for each image
  List<String> titles = [
    "SPIN\nTO WIN",
    "Watch videos earn\nmore points.",
  ];
  // Subtitles to display for each image
  List<String> titles2 = [
    "Try your luck",
    "Watch & earn",
  ];
  // Button texts to display for each image
  List<String> titles3 = [
    "Spin Now",
    "Watch Video",
  ];

  // The index of the currently displayed image in the carousel
  int currentIndex = 0;

  // The controller for the PageView widget, which allows us to programatically
  // navigate to different pages in the carousel
  final PageController controller = PageController();

  // This method is called when the widget is first created, and sets up a timer
  // to automatically cycle through the carousel images
  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 2), (timer) {
      if (currentIndex == images.length - 1) {
        currentIndex = 0;
        // Animate to the first image
        controller.animateToPage(
          currentIndex,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        currentIndex++;
        // Move to the next image
        controller.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // A container with a PageView widget for displaying images and their titles.
        SizedBox(
          height: 160.h,
          width: double.infinity,
          child: PageView.builder(
            // A controller for the PageView widget.
            controller: controller,
            // Called when the currently displayed page changes.
            onPageChanged: (index) {
              setState(() {
                // Updates the index of the current page.
                currentIndex = index % images.length;
              });
            },
            // The total number of pages.
            itemCount: images.length,
            // Builds the widget for each page.
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  // A container with an image that fills its space.
                  Padding(
                    padding: const EdgeInsets.only(right: 16, left: 16),
                    child: GestureDetector(
                      onTap:(){

                        Get.to(const SpinWheel());
                      },
                      child: SizedBox(
                        height: 160.h,
                        width: double.infinity,
                        child: Center(
                          child: Image.asset(
                            // The image to display for the current page.
                            images[index % images.length],
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // A container with the title of the current page.
                  Positioned(
                    top: 24,
                    left: 22,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      child: Text(
                        // The title to display for the current page.
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
                  // A container with a subtitle for the current page.
                  Positioned(
                    top: 85,
                    left: 22,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      child: Text(
                        // The subtitle to display for the current page.
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
                  // A container with a label for the current page.
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
                          // The label to display for the current page.
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
        // A row of indicator dots that represent the pages.
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var i = 0; i < images.length; i++)
              buildIndicator(currentIndex == i)
          ],
        ),
      ],
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Container(
      margin: const EdgeInsets.all(2),
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
