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
        Get.offAll(MyBottomNav());
        return false;
      },
      child: Scaffold(
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Container(
                  height: 100.h,
                  decoration: BoxDecoration(
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
                    padding: const EdgeInsets.only(top: 30, bottom: 50),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {
                              Get.offAll(MyBottomNav());
                            },
                            icon: Icon(
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
                Positioned(
                  child: Container(
                    margin: EdgeInsets.only(top: 90),
                    height: 614.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.colorWhiteHighEmp,
                        borderRadius: BorderRadius.circular(24)),
                    child: NotificationModel(),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
