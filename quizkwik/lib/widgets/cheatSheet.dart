import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'appColors.dart';

class CheatSheet extends StatelessWidget {
  const CheatSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ---- Text ----
        Text(
          "Welcome Back",
          style: TextStyle(
              fontSize: 24.sp,
              color: AppColors.colorBlackHighEmp,
              fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
