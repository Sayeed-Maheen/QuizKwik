import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'appColors.dart';

class MyButton extends StatefulWidget {
  final void Function()?
      onPressed; // Function to call when the button is pressed
  final String text; // Text to display on the button

  const MyButton({
    Key? key, // Optional key argument
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50
          .h, // Set the height of the container using ScreenUtil for responsive design
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppColors.colorBlueGradientStart,
            AppColors.colorBlueGradientEnd,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ), // Use a linear gradient for the background color
        borderRadius:
            BorderRadius.circular(48), // Add rounded corners to the container
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: AppColors
                .colorPrimaryLightest, // Add a light shadow to the button
            blurRadius: 7,
          ),
        ],
      ),
      child: MaterialButton(
        height: 50
            .h, // Set the height of the button using ScreenUtil for responsive design
        splashColor: Colors.transparent, // Remove the splash effect on tap
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(48), // Add rounded corners to the button
        ),
        onPressed: widget
            .onPressed, // Call the function passed as a parameter when the button is pressed
        child: Center(
          child: Text(
            widget.text, // Display the text passed as a parameter
            style: TextStyle(
              color: AppColors.colorWhiteHighEmp, // Set the text color
              fontSize: 16
                  .sp, // Use ScreenUtil to set the font size for responsive design
              fontWeight: FontWeight.w600, // Set the font weight
            ),
          ),
        ),
      ),
    );
  }
}
