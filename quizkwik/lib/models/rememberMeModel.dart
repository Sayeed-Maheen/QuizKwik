import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/appColors.dart';

class RememberMeModel extends StatefulWidget {
  const RememberMeModel({super.key});

  @override
  State<RememberMeModel> createState() => _RememberMeModelState();
}

class _RememberMeModelState extends State<RememberMeModel> {
  bool? check1 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2, vertical: 12),
            child: Theme(
              data: Theme.of(context).copyWith(
                unselectedWidgetColor: AppColors.colorBlackMidEmp,
              ),
              child: Transform.scale(
                scale: 0.8,
                child: SizedBox(
                  height: 20.h,
                  width: 20.w,
                  child: Checkbox(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2)),
                      value: check1,
                      onChanged: (bool? value) {
                        setState(() {
                          check1 = value;
                        });
                      }),
                ),
              ),
            ),
          ),
          Text(
            "Remember me",
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.colorBlackMidEmp,
            ),
          ),
        ],
      ),
    );
  }
}
