import 'package:flutter/material.dart';

import 'appColors.dart';

class MyContainer extends StatelessWidget {
  final Widget child;
  final double width;
  final Color color;
  final BorderRadius borderRadius;

  MyContainer({
    required this.child,
    this.width = double.infinity,
    this.color = AppColors.colorWhiteHighEmp,
    this.borderRadius = const BorderRadius.all(Radius.circular(24)),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.2),
            blurRadius: 15.0, // soften the shadow
            spreadRadius: 0.0, //extend the shadow
            offset: Offset(
              5, // Move to right 10  horizontally
              5, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: child,
    );
  }
}
