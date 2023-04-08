import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'appColors.dart';

class MyButton extends StatefulWidget {
  final void Function()? onPressed;
  final String text;
  const MyButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppColors.colorBlueGradientStart,
            AppColors.colorBlueGradientEnd,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(48),
        boxShadow: const <BoxShadow>[
          BoxShadow(color: AppColors.colorPrimaryLightest, blurRadius: 7),
        ],
      ),
      child: MaterialButton(
        height: 50.h,
        splashColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(48),
        ),
        onPressed: widget.onPressed,
        child: Center(
            child: Text(
          widget.text,
          style: TextStyle(
            color: AppColors.colorWhiteHighEmp,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
          ),
        )),
      ),
    );
  }
}
