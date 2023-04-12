import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'appColors.dart';

class IconAndTextButton extends StatefulWidget {
  final void Function()? onPressed; // Function to be executed on button press
  final Widget child; // Child widget to be displayed inside the button
  const IconAndTextButton({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  State<IconAndTextButton> createState() => _IconAndTextButtonState();
}

class _IconAndTextButtonState extends State<IconAndTextButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h, // Set the height of the button
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppColors.colorBlueGradientStart, // Start color of the gradient
            AppColors.colorBlueGradientEnd, // End color of the gradient
          ],
          begin: Alignment.topCenter, // Gradient start position
          end: Alignment.bottomCenter, // Gradient end position
        ),
        borderRadius:
            BorderRadius.circular(48), // Set the border radius of the button
        boxShadow: const <BoxShadow>[
          BoxShadow(
              color: AppColors.colorPrimaryLightest,
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
