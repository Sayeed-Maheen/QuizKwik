import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LeaderboardScreenModel extends StatelessWidget {
  const LeaderboardScreenModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/leaderboard.png",
              height: 256.h, width: 256.w),
          Image.asset("assets/images/list.png",
              height: 350.h, width: 330.w),


          SizedBox(height: 50.h,)

        ],
      ),
    );
  }
}
