import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizkwik/models/myBottomNav.dart';

import '../widgets/appColors.dart';
import '../widgets/myButton.dart';

class OtpPopupModel extends StatefulWidget {
  const OtpPopupModel({super.key});

  @override
  State<OtpPopupModel> createState() => _OtpPopupModelState();
}

class _OtpPopupModelState extends State<OtpPopupModel> {
  Future<void> _showSimpleDialog() async {
    await showDialog<void>(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          backgroundColor: AppColors.colorPopupBg,
          child: Column(
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
                child: Image.asset('assets/images/popupImage.png'),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(100),
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(24)),
                  color: AppColors.colorWhiteHighEmp,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Congo!',
                      style: TextStyle(
                        fontSize: 36.sp,
                        color: AppColors.colorSuccess,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Your account was created successfully',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.colorBlackMidEmp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 52),
                      child: MyButton(
                        onPressed: () {
                          Get.offAll(() => const MyBottomNav());
                        },
                        text: 'Let’s Explore',
                      ),
                    ),
                    SizedBox(height: 12.h),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MyButton(onPressed: _showSimpleDialog, text: 'Next');
  }
}
