import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizkwik/screens/homeScreen.dart';

import '../widgets/appColors.dart';
import '../widgets/myButton.dart';

class ForgotPasswordOtpPopupModel extends StatefulWidget {
  const ForgotPasswordOtpPopupModel({super.key});

  @override
  State<ForgotPasswordOtpPopupModel> createState() =>
      _ForgotPasswordOtpPopupModelState();
}

class _ForgotPasswordOtpPopupModelState
    extends State<ForgotPasswordOtpPopupModel> {
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
                padding: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(24),
                  ),
                  color: AppColors.colorWhiteHighEmp,
                ),
                child: Image.asset('assets/images/popupImage.png'),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
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
                    SizedBox(height: 8),
                    Text(
                      'Your password was changed successfully',
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
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                          );
                        },
                        text: "Back to Home",
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
    return Container(
      child: MyButton(onPressed: _showSimpleDialog, text: 'Reset Now'),
    );
  }
}
