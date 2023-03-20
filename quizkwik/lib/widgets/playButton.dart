import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'appColors.dart';

class PlayButton extends StatefulWidget {
  final void Function()? onPressed;
  final Widget child;
  PlayButton({
    required this.onPressed,
    required this.child,
  });

  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      width: 68.w,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.colorCard2GradientStart,
            AppColors.colorCard2GradientEnd,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(48),
        boxShadow: <BoxShadow>[
          BoxShadow(color: AppColors.colorSecondaryLightest, blurRadius: 7),
        ],
      ),
      child: MaterialButton(
        height: 44.h,
        splashColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(48),
        ),
        onPressed: widget.onPressed,
        child: Center(
          child: widget.child,
        ),
      ),
    );
  }
}
