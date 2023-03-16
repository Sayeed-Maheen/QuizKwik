import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'appColors.dart';

class ProfileScreenButton extends StatefulWidget {
  final void Function()? onPressed;
  final String text;
  ProfileScreenButton({
    required this.onPressed,
    required this.text,
  });

  @override
  State<ProfileScreenButton> createState() => _ProfileScreenButtonState();
}

class _ProfileScreenButtonState extends State<ProfileScreenButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.colorBlueGradientStart,
            AppColors.colorBlueGradientEnd,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(16),
        boxShadow: <BoxShadow>[
          BoxShadow(color: AppColors.colorPrimaryLightest, blurRadius: 7),
        ],
      ),
      child: MaterialButton(
        height: 68.h,
        splashColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(48),
        ),
        onPressed: widget.onPressed,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.redeem, color: AppColors.colorWhiteHighEmp),
            SizedBox(height: 2.h),
            Text(
              widget.text,
              style: TextStyle(
                color: AppColors.colorWhiteHighEmp,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
