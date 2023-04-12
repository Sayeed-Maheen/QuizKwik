import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizkwik/widgets/appColors.dart';
import 'package:rxdart/rxdart.dart';

class SpinWheel extends StatefulWidget {
  const SpinWheel({Key? key}) : super(key: key);

  @override
  State<SpinWheel> createState() => _SpinWheelState();
}

class _SpinWheelState extends State<SpinWheel> {
  final selected = BehaviorSubject<int>();
  int rewards = 0;

  List<int> items = [100, 50, 60, 20, 10, 40, 80];

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          "You just won " + rewards.toString() + " Points!"),
                    ),
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: () {
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
                child:  Center(
                  child: Text("SPIN",style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.colorWhiteHighEmp,
                      fontWeight: FontWeight.w700), ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
