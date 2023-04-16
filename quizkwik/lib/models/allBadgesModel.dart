import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllBadgesModel extends StatefulWidget {
  const AllBadgesModel({Key? key}) : super(key: key);

  @override
  State<AllBadgesModel> createState() => _AllBadgesModelState();
}

class _AllBadgesModelState extends State<AllBadgesModel> {
  List<String> imageList = [
    // Replace these bytes with the actual bytes of your images
    "assets/images/Badge1.png",
    "assets/images/Badge2.png",
    "assets/images/Badge3.png",
    "assets/images/Badge4.png",
    "assets/images/Badge5.png",
    "assets/images/Badge1.png",
    "assets/images/Badge2.png",
    "assets/images/Badge3.png",
    "assets/images/Badge4.png",
    "assets/images/Badge5.png",
    "assets/images/Badge1.png",
    "assets/images/Badge2.png",
    "assets/images/Badge3.png",
    "assets/images/Badge4.png",
    "assets/images/Badge5.png",
    "assets/images/Badge1.png",
    "assets/images/Badge2.png",
    "assets/images/Badge3.png",
    "assets/images/Badge4.png",
    "assets/images/Badge5.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.builder(
        itemCount: imageList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            imageList[index],
            height: 56.h,
            width: 56.w,
          );
        },
      ),
    );
  }
}
