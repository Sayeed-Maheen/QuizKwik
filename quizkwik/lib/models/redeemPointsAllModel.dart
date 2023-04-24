import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/appColors.dart';
import '../widgets/myButton.dart';

class RedeemPointsAllModel extends StatefulWidget {
  const RedeemPointsAllModel({Key? key}) : super(key: key);

  @override
  State<RedeemPointsAllModel> createState() => _RedeemPointsAllModelState();
}

class _RedeemPointsAllModelState extends State<RedeemPointsAllModel> {
  void _showNetflixPopup() {
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
                child: Image.asset("assets/images/netflix.png",
                    height: 200.h, width: 200.w),
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
                    "Get your \$5 gift card. It will be sent via email.",
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
                          _showSuccessfulPopup();
                        },
                        text: "Redeem Now"),
                  ))
            ],
          ),
        );
      },
    );
  }

  void _showTwitchPopup() {
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
                child: Image.asset("assets/images/twitch.png",
                    height: 200.h, width: 200.w),
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
                    "Get your \$5 gift card. It will be sent via email.",
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
                          _showSuccessfulPopup();
                        },
                        text: "Redeem Now"),
                  ))
            ],
          ),
        );
      },
    );
  }

  void _showPlayCardPopup() {
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
                child: Image.asset("assets/images/playCard.png",
                    height: 200.h, width: 200.w),
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
                    "Get your \$5 gift card. It will be sent via email.",
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
                          _showSuccessfulPopup();
                        },
                        text: "Redeem Now"),
                  ))
            ],
          ),
        );
      },
    );
  }

  void _showPsCardPopup() {
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
                child: Image.asset("assets/images/psCard.png",
                    height: 200.h, width: 200.w),
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
                    "Get your \$5 gift card. It will be sent via email.",
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
                          _showSuccessfulPopup();
                        },
                        text: "Redeem Now"),
                  ))
            ],
          ),
        );
      },
    );
  }

  void _showSteamPopup() {
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
                child: Image.asset("assets/images/steam.png",
                    height: 200.h, width: 200.w),
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
                    "Get your \$5 gift card. It will be sent via email.",
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
                          _showSuccessfulPopup();
                        },
                        text: "Redeem Now"),
                  ))
            ],
          ),
        );
      },
    );
  }
  void _showSuccessfulPopup() {
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
                child: Image.asset("assets/images/badge7.png",
                    height: 110.h, width: 122.w),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(left:16, right: 16,top: 16),
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
                    "Dammn!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 36.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.colorPrimary),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(left:16, right: 16,top: 16),
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
                    "Redeemed Successfully",
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
                        text: "Redeem Now"),
                  ))
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GestureDetector(
              onTap: () {
                _showNetflixPopup();
              },
              child: Image.asset("assets/images/netflix.png",
                  height: 200.h, width: 311.w)),
          GestureDetector(
              onTap: () {
                _showTwitchPopup();
              },
              child: Image.asset("assets/images/twitch.png",
                  height: 200.h, width: 311.w)),
          GestureDetector(
            onTap: () {
              _showPlayCardPopup();
            },
            child: Image.asset("assets/images/playCard.png",
                height: 200.h, width: 311.w),
          ),
          GestureDetector(
              onTap: () {
                _showPsCardPopup();
              },
              child: Image.asset("assets/images/psCard.png",
                  height: 200.h, width: 311.w)),
          GestureDetector(
              onTap: () {
                _showSteamPopup();
              },
              child: Image.asset("assets/images/steam.png",
                  height: 200.h, width: 311.w)),
        ],
      ),
    );
  }
}
