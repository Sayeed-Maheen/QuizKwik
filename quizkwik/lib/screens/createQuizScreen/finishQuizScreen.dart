import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/appColors.dart';
import '../../widgets/myContainer.dart';

class FinishQuizScreen extends StatelessWidget {
  const FinishQuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/pageBG.png"),
                fit: BoxFit.fill)),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 45, bottom: 16),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back,
                        color: AppColors.colorWhiteHighEmp)),
                Text(
                  "Create Quiz",
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: AppColors.colorWhiteHighEmp,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(
                      "Math Quiz",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.colorBlackHighEmp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16, right: 16),
                    child: Image.asset("assets/images/mathQuizImage.png", height: 128.h)
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, bottom: 16),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/diamond.png", height: 16.h,width: 16.w), SizedBox(width: 4.w),
                                Text(
                                  "500",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: AppColors.colorBlackHighEmp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            SizedBox(width: 12.w),
                            Row(
                              children: [
                                const Icon(Icons.alarm_on,color: AppColors.colorDisabled,size: 16,), SizedBox(width: 4.w),
                                Text(
                                  "5 min",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: AppColors.colorBlackHighEmp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row()
                      ],
                    ),
                  )
                ],
              )),
        ]),
      ),
    );
  }
}
