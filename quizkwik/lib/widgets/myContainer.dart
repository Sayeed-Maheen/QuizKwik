import 'package:flutter/material.dart';

import 'appColors.dart';

class MyContainer extends StatelessWidget {
  final Widget child;
  final double width;
  final Color color;
  final BorderRadius borderRadius;

  const MyContainer({
    Key? key,
    required this.child,
    this.width = double.infinity,
    this.color = AppColors.colorWhiteHighEmp,
    this.borderRadius = const BorderRadius.all(Radius.circular(24)),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Set the width of the container
      width: width,
      // Add some margin to the container
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        // Set the color of the container
        color: color,
        // Set the border radius of the container
        borderRadius: borderRadius,
        // Add a box shadow to the container
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.2),
            blurRadius: 15.0, // Soften the shadow
            spreadRadius: 0.0, // Extend the shadow
            offset: const Offset(
              5, // Move to the right 5 horizontally
              5, // Move to the bottom 5 vertically
            ),
          )
        ],
      ),
      child: child, // Add the child widget to the container
    );
  }
}
