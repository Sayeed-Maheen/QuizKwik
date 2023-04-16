import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/appColors.dart';
import '../widgets/myButton.dart';

class StatsModel extends StatefulWidget {
  const StatsModel({Key? key}) : super(key: key);

  @override
  State<StatsModel> createState() => _StatsModelState();
}

class _StatsModelState extends State<StatsModel> {
  void _showBadge1Popup() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          backgroundColor: AppColors.colorPopupBg,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 110.h,
                width: double.infinity,
                padding: const EdgeInsets.only(top: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(24),
                  ),
                  color: AppColors.colorWhiteHighEmp,
                ),
                child: Image.asset("assets/images/Badge1.png",
                    height: 102.h, width: 102.w),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(0)),
                  color: AppColors.colorWhiteHighEmp,
                ),
                child: Center(
                  child: Text(
                    "5 in a Row Streak",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.colorBlackHighEmp),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(0)),
                  color: AppColors.colorWhiteHighEmp,
                ),
                child: Center(
                  child: Text(
                    "You’ve got 25 points for this achievement",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.colorBlackLowEmp),
                  ),
                ),
              ),
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(0),
                        bottomRight: Radius.circular(100),
                        topLeft: Radius.circular(0),
                        bottomLeft: Radius.circular(24)),
                    color: AppColors.colorWhiteHighEmp,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 10),
                    child: MyButton(
                        onPressed: () {
                          Get.back();
                        },
                        text: "Close"),
                  ))
            ],
          ),
        );
      },
    );
  }

  void _showBadge2Popup() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          backgroundColor: AppColors.colorPopupBg,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 110.h,
                width: double.infinity,
                padding: const EdgeInsets.only(top: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(24),
                  ),
                  color: AppColors.colorWhiteHighEmp,
                ),
                child: Image.asset("assets/images/Badge2.png",
                    height: 102.h, width: 102.w),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(0)),
                  color: AppColors.colorWhiteHighEmp,
                ),
                child: Center(
                  child: Text(
                    "Master of the Heart",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.colorBlackHighEmp),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(0)),
                  color: AppColors.colorWhiteHighEmp,
                ),
                child: Center(
                  child: Text(
                    "You’ve got 50 points for this achievement",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.colorBlackLowEmp),
                  ),
                ),
              ),
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(0),
                        bottomRight: Radius.circular(100),
                        topLeft: Radius.circular(0),
                        bottomLeft: Radius.circular(24)),
                    color: AppColors.colorWhiteHighEmp,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 10),
                    child: MyButton(
                        onPressed: () {
                          Get.back();
                        },
                        text: "Close"),
                  ))
            ],
          ),
        );
      },
    );
  }

  void _showBadge3Popup() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          backgroundColor: AppColors.colorPopupBg,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 110.h,
                width: double.infinity,
                padding: const EdgeInsets.only(top: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(24),
                  ),
                  color: AppColors.colorWhiteHighEmp,
                ),
                child: Image.asset("assets/images/Badge3.png",
                    height: 102.h, width: 102.w),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(0)),
                  color: AppColors.colorWhiteHighEmp,
                ),
                child: Center(
                  child: Text(
                    "5 in a Row Streak",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.colorBlackHighEmp),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(0)),
                  color: AppColors.colorWhiteHighEmp,
                ),
                child: Center(
                  child: Text(
                    "You’ve got 5 points for this achievement",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.colorBlackLowEmp),
                  ),
                ),
              ),
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(0),
                        bottomRight: Radius.circular(100),
                        topLeft: Radius.circular(0),
                        bottomLeft: Radius.circular(24)),
                    color: AppColors.colorWhiteHighEmp,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 10),
                    child: MyButton(
                        onPressed: () {
                          Get.back();
                        },
                        text: "Close"),
                  ))
            ],
          ),
        );
      },
    );
  }

  void _showBadge4Popup() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          backgroundColor: AppColors.colorPopupBg,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 110.h,
                width: double.infinity,
                padding: const EdgeInsets.only(top: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(24),
                  ),
                  color: AppColors.colorWhiteHighEmp,
                ),
                child: Image.asset("assets/images/Badge4.png",
                    height: 102.h, width: 102.w),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(0)),
                  color: AppColors.colorWhiteHighEmp,
                ),
                child: Center(
                  child: Text(
                    "5 in a Row Streak",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.colorBlackHighEmp),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(0)),
                  color: AppColors.colorWhiteHighEmp,
                ),
                child: Center(
                  child: Text(
                    "You’ve got 5 points for this achievement",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.colorBlackLowEmp),
                  ),
                ),
              ),
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(0),
                        bottomRight: Radius.circular(100),
                        topLeft: Radius.circular(0),
                        bottomLeft: Radius.circular(24)),
                    color: AppColors.colorWhiteHighEmp,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 10),
                    child: MyButton(
                        onPressed: () {
                          Get.back();
                        },
                        text: "Close"),
                  ))
            ],
          ),
        );
      },
    );
  }

  void _showBadge5Popup() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          backgroundColor: AppColors.colorPopupBg,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 110.h,
                width: double.infinity,
                padding: const EdgeInsets.only(top: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(24),
                  ),
                  color: AppColors.colorWhiteHighEmp,
                ),
                child: Image.asset("assets/images/Badge5.png",
                    height: 102.h, width: 102.w),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(0)),
                  color: AppColors.colorWhiteHighEmp,
                ),
                child: Center(
                  child: Text(
                    "5 in a Row Streak",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.colorBlackHighEmp),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(0)),
                  color: AppColors.colorWhiteHighEmp,
                ),
                child: Center(
                  child: Text(
                    "You’ve got 5 points for this achievement",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.colorBlackLowEmp),
                  ),
                ),
              ),
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(0),
                        bottomRight: Radius.circular(100),
                        topLeft: Radius.circular(0),
                        bottomLeft: Radius.circular(24)),
                    color: AppColors.colorWhiteHighEmp,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 10),
                    child: MyButton(
                        onPressed: () {
                          Get.back();
                        },
                        text: "Close"),
                  ))
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
            onTap: () {
              _showBadge1Popup();
            },
            child: Image.asset("assets/images/row1.png",
                height: 80.h, width: 328.w)),
        GestureDetector(
            onTap: () {
              _showBadge2Popup();
            },
            child: Image.asset("assets/images/row2.png",
                height: 80.h, width: 328.w)),
        GestureDetector(
            onTap: () {
              _showBadge3Popup();
            },
            child: Image.asset("assets/images/row3.png",
                height: 80.h, width: 328.w)),
        GestureDetector(
            onTap: () {
              _showBadge4Popup();
            },
            child: Image.asset("assets/images/row4.png",
                height: 80.h, width: 328.w)),
        GestureDetector(
            onTap: () {
              _showBadge5Popup();
            },
            child: Image.asset("assets/images/row5.png",
                height: 80.h, width: 328.w)),
      ],
    );
  }
}
