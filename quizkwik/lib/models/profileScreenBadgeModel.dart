import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreenBadgeModel extends StatelessWidget {
  const ProfileScreenBadgeModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      itemCount: 7,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, crossAxisSpacing: 24, mainAxisSpacing: 24),
      itemBuilder: (BuildContext context, int index) {
        List<String> images = [
          'assets/images/badge1.png',
          'assets/images/badge2.png',
          'assets/images/badge3.png',
          'assets/images/badge4.png',
          'assets/images/badge5.png',
          'assets/images/badge6.png',
          'assets/images/badge7.png',
        ];

        return Image.asset(images[index], height: 56.h, width: 56.w);
      },
    );
  }
}
