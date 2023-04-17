import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizkwik/models/mathScreenDropdownModel.dart';
import 'package:quizkwik/models/mathScreenModel.dart';
import 'package:quizkwik/models/myBottomNav.dart';

import '../widgets/appColors.dart';

class MathScreen extends StatefulWidget {
  const MathScreen({Key? key}) : super(key: key);

  @override
  State<MathScreen> createState() => _MathScreenState();
}

class _MathScreenState extends State<MathScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

            ),
            Positioned(
              child: Container(
                margin: const EdgeInsets.only(top: 90),
                height: 606.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.colorWhiteHighEmp,
                    borderRadius: BorderRadius.circular(24)),
                child: Column(
                  children: const [
                    MathScreenDropdownModel(),
                    Expanded(
                      child: MathScreenModel(),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 35,

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
                  'Math',
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: AppColors.colorWhiteHighEmp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),)
          ]),
        ],
      ),
    );
  }
}
