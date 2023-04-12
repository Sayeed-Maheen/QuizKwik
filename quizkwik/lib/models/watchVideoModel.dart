import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizkwik/widgets/iconAndTextButton.dart';
import 'package:timer_count_down/timer_count_down.dart';

import '../widgets/appColors.dart';

class WatchVideoModel extends StatefulWidget {
  const WatchVideoModel({Key? key}) : super(key: key);

  @override
  State<WatchVideoModel> createState() => _WatchVideoModelState();
}

class _WatchVideoModelState extends State<WatchVideoModel> {
  int _counter = 3;
  Gradient _containerGradient = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      AppColors.colorCard2GradientStart,
      AppColors.colorCard2GradientEnd
    ],
  );
  bool _isCounterDisabled = false;

  void _incrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
        if (_counter == 0) {
          _containerGradient = const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.grey, Colors.grey],
          );
          _isCounterDisabled = true;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            "Watch Videos",
            style: TextStyle(
                fontSize: 24.sp,
                color: AppColors.colorPrimary,
                fontWeight: FontWeight.w700),
          ),
          Text(
            "Add more points to your wallet",
            style: TextStyle(
                fontSize: 12.sp,
                color: AppColors.colorBlackLowEmp,
                fontWeight: FontWeight.w400),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
            height: 30.h,
            width: 154.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              gradient: _containerGradient,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text(
                      "Daily videos remaining:",
                      style: TextStyle(
                          fontSize: 10.sp,
                          color: AppColors.colorWhiteHighEmp,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      '$_counter',
                      style: TextStyle(
                          fontSize: 10.sp,
                          color: AppColors.colorWhiteHighEmp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const Icon(Icons.info,
                    color: AppColors.colorWhiteHighEmp, size: 16)
              ],
            ),
          ),
          Visibility(
            visible: _counter == 0,
            child: Countdown(
              seconds: 60,
              build: (BuildContext context, double time) => Text(
                "Next videos in: " + time.toString(),
                style: TextStyle(
                    fontSize: 10.sp,
                    color: AppColors.colorError,
                    fontWeight: FontWeight.w400),
              ),
              interval: const Duration(milliseconds: 500),
              onFinished: () {
                // do something when the timer finishes
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 32),
            child: SvgPicture.asset('assets/images/watchVideo.svg'),
          ),
          IconAndTextButton(
              onPressed: _incrementCounter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.movie_creation,
                    size: 16,
                    color: AppColors.colorWhiteHighEmp,
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    "Watch Now",
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.colorWhiteHighEmp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
