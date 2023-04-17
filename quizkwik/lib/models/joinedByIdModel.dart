import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizkwik/screens/createQuizScreen/questionAnswerScreen2.dart';
import 'package:quizkwik/widgets/myButton.dart';
import 'package:quizkwik/widgets/myContainer.dart';

import '../widgets/appColors.dart';

class JoinedByIdModel extends StatelessWidget {
  const JoinedByIdModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      decoration: BoxDecoration(
        color: AppColors.colorWhiteHighEmp,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.2),
            blurRadius: 15.0, // Soften the shadow
            spreadRadius: 0.0, // Extend the shadow
            offset: const Offset(
              5, // Move to the right 5 horizontally
              5, // Move to the bottom 5 vertically
            ),
          )
        ],

      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32,vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter Quiz ID',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.colorBlackHighEmp),
            ),
            SizedBox(height: 8.h),
            Center(
              child: SizedBox(
                width: 300.w,
                child: TextFormField(

                  style: const TextStyle(color: AppColors.colorBlackHighEmp),
                  decoration: InputDecoration(
                    hintText: 'Type Quiz ID',
                    hintStyle: TextStyle(
                        color: AppColors.colorBlackLowEmp,
                        fontWeight: FontWeight.w300,
                        fontSize: 12.sp),
                    contentPadding: const EdgeInsets.fromLTRB(16, 20, 16, 15),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(56),
                      borderSide: const BorderSide(
                        color: AppColors.colorWhiteLowEmp,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(56),
                      borderSide: const BorderSide(
                        color: AppColors.colorWhiteLowEmp,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.h),
            MyButton(onPressed: (){
              Get.to(const QuestionAnswerScreen2());
            }, text: "Join a Quiz")
          ],
        ),
      ),
    );
  }
}
