import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizkwik/widgets/appColors.dart';
import 'package:quizkwik/widgets/myButton.dart';
import 'package:rxdart/rxdart.dart';
import 'package:timer_count_down/timer_count_down.dart';

class SpinAndWinModel extends StatefulWidget {
  const SpinAndWinModel({Key? key}) : super(key: key);

  @override
  State<SpinAndWinModel> createState() => _SpinAndWinModelState();
}

class _SpinAndWinModelState extends State<SpinAndWinModel> {
  final selected = BehaviorSubject<int>();
  int rewards = 0;
  bool _isSpinWheelDisabled = false;

  List<int> items = [100, 50, 60, 20, 10, 40, 80];

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

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
          _isSpinWheelDisabled = true;
        }
      }
    });
  }

  void _showPointsPopup(int points) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          backgroundColor: AppColors.colorPopupBg,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 110.h,
                width: double.infinity,
                padding: const EdgeInsets.only(top: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(24),
                  ),
                  color: AppColors.colorWhiteHighEmp,
                ),
                child: Image.asset('assets/images/diamond2.png'),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(0),
                      bottomLeft: Radius.circular(0)),
                  color: AppColors.colorWhiteHighEmp,
                ),
                child: Center(
                  child: Text(
                    "Dammn! $points points",
                    style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.colorPrimary),
                  ),
                ),
              ),
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(0),
                        bottomRight: Radius.circular(100),
                        topLeft: Radius.circular(0),
                        bottomLeft: Radius.circular(24)),
                    color: AppColors.colorWhiteHighEmp,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                    child: MyButton(onPressed: (){
                      Get.back();
                    }, text: "Close"),
                  ))
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorWhiteHighEmp,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Spin the Wheel",
              style: TextStyle(
                  fontSize: 36.sp,
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
                        "Daily spin remaining:",
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
                  "Next spin in: " + time.toString(),
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
            SizedBox(
              height: 350.h,
              child: FortuneWheel(
                selected: selected.stream,
                animateFirst: false,
                indicators: const <FortuneIndicator>[
                  FortuneIndicator(
                    alignment: Alignment
                        .topCenter, // <-- changing the position of the indicator
                    child: TriangleIndicator(
                      color: AppColors
                          .colorSecondary, // <-- changing the color of the indicator
                    ),
                  ),
                ],
                items: [
                  for (int i = 0; i < items.length; i++) ...<FortuneItem>{
                    FortuneItem(
                        child: Text(
                      items[i].toString(),
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: AppColors.colorWhiteHighEmp,
                          fontWeight: FontWeight.w600),
                    )),
                  },
                ],
                onAnimationEnd: () {
                  setState(() {
                    rewards = items[selected.value];
                  });
                  print(rewards);
                  _showPointsPopup(rewards);
                  setState(() {
                    _isCounterDisabled = false;
                    _isSpinWheelDisabled = false;
                  });
                },
              ),
            ),
            GestureDetector(
              onTap: _isSpinWheelDisabled
                  ? null
                  : () {
                      _incrementCounter();
                      setState(() {
                        selected.add(Fortune.randomInt(0, items.length));
                      });
                    },
              child: Container(
                height: 40.h,
                width: 120.w,
                decoration: BoxDecoration(
                    color: AppColors.colorSecondary,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    "SPIN",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: AppColors.colorWhiteHighEmp,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
