import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizkwik/models/otpPopupModel.dart';

import '../widgets/appColors.dart';

class OtpModel extends StatefulWidget {
  const OtpModel({Key? key}) : super(key: key);

  @override
  State<OtpModel> createState() => _OtpModelState();
}

class _OtpModelState extends State<OtpModel> {
  final TextEditingController _otpController1 = TextEditingController();
  final TextEditingController _otpController2 = TextEditingController();
  final TextEditingController _otpController3 = TextEditingController();
  final TextEditingController _otpController4 = TextEditingController();

  bool _isButtonEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _textFieldOTP(_otpController1, first: true, last: false),
              _textFieldOTP(_otpController2, first: false, last: false),
              _textFieldOTP(_otpController3, first: false, last: false),
              _textFieldOTP(_otpController4, first: false, last: true),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        const OtpPopupModel(),
      ],
    );
  }

  Widget _textFieldOTP(TextEditingController controller,
      {required bool first, required bool last}) {
    return Container(
      height: 55.h,
      width: 55.w,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: AppColors.colorWhiteHighEmp,
          borderRadius: BorderRadius.circular(50)),
      child: AspectRatio(
        aspectRatio: 1,
        child: TextField(
          controller: controller,
          onChanged: (value) {
            if (value.length == 1 && !last) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && !first) {
              FocusScope.of(context).previousFocus();
            }

            // Check if all four OTP fields are filled to enable button
            if (_otpController1.text.isNotEmpty &&
                _otpController2.text.isNotEmpty &&
                _otpController3.text.isNotEmpty &&
                _otpController4.text.isNotEmpty) {
              setState(() {
                _isButtonEnabled = true;
              });
            } else {
              setState(() {
                _isButtonEnabled = false;
              });
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.colorBlackMidEmp),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: const Offstage(),
            contentPadding: const EdgeInsets.fromLTRB(18, 15, 16, 15),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(
                color: AppColors.colorWhiteLowEmp,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(
                color: AppColors.colorSuccess,
                width: 1,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
