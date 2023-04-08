import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'appColors.dart';

class PlayButton extends StatefulWidget {
  final void Function()? onPressed; // Function to be executed on button press
  final Widget child; // Child widget to be displayed inside the button
  const PlayButton({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  State<PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h, // Set the height of the button
      width: 68.w, // Set the width of the button
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppColors.colorCard2GradientStart, // Start color of the gradient
            AppColors.colorCard2GradientEnd, // End color of the gradient
          ],
          begin: Alignment.topCenter, // Gradient start position
          end: Alignment.bottomCenter, // Gradient end position
        ),
        borderRadius:
            BorderRadius.circular(48), // Set the border radius of the button
        boxShadow: const <BoxShadow>[
          BoxShadow(
              color: AppColors.colorSecondaryLightest,
              blurRadius: 7), // Add a shadow to the button
        ],
      ),
      child: MaterialButton(
        height: 44.h, // Set the height of the button
        splashColor: Colors.transparent, // Set the splash color of the button
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(48), // Set the border radius of the button
        ),
        onPressed: widget
            .onPressed, // Set the onPressed function of the button to the function provided in the constructor
        child: Center(
          child: widget
              .child, // Set the child widget of the button to the widget provided in the constructor
        ),
      ),
    );
  }
}
