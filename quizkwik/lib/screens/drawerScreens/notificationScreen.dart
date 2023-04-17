import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizkwik/models/notificationModel.dart';

import '../../models/myBottomNav.dart';
import '../../widgets/appColors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.offAll(const MyBottomNav());
        return false;
      },
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                height: 100.h,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.colorBlueGradientStart,
                      AppColors.colorBlueGradientEnd
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 35, bottom: 35),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.offAll(const MyBottomNav());
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: AppColors.colorWhiteHighEmp,
                          )),
                      SizedBox(width: 8.w),
                      Text(
                        'Notification',
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: AppColors.colorWhiteHighEmp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:const EdgeInsets.only(top: 90),
                child: Positioned(
                  child: Container(
                    height: 605.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.colorWhiteHighEmp,
                        borderRadius: BorderRadius.circular(25)),
                    child: const NotificationModel(),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
