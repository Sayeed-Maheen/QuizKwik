import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'appColors.dart';

class ProfileScreenButton extends StatefulWidget {
  final void Function()?
      onPressed; // function to be called when button is pressed
  final String text; // text to be displayed on the button
  const ProfileScreenButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  State<ProfileScreenButton> createState() => _ProfileScreenButtonState();
}

class _ProfileScreenButtonState extends State<ProfileScreenButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68.h, // set height of the container using screen utilities
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppColors.colorBlueGradientStart, // start color of the gradient
            AppColors.colorBlueGradientEnd, // end color of the gradient
          ],
          begin: Alignment.topCenter, // start point of the gradient
          end: Alignment.bottomCenter, // end point of the gradient
        ),
        borderRadius:
            BorderRadius.circular(16), // set border radius of the container
        boxShadow: const <BoxShadow>[
          BoxShadow(
              color: AppColors.colorPrimaryLightest,
              blurRadius: 7), // add a box shadow to the container
        ],
      ),
      child: MaterialButton(
        height: 68.h, // set height of the button using screen utilities
        splashColor: Colors.transparent, // set splash color of the button
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(48), // set border radius of the button
        ),
        onPressed: widget
            .onPressed, // set onPressed function of the button to the function passed as a parameter
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.redeem,
                color:
                    AppColors.colorWhiteHighEmp), // add an icon to the button
            SizedBox(
                height: 2.h), // add some spacing between the icon and the text
            Text(
              widget.text, // display the text passed as a parameter
              style: TextStyle(
                color: AppColors.colorWhiteHighEmp, // set color of the text
                fontSize:
                    16.sp, // set font size of the text using screen utilities
                fontWeight: FontWeight.w600, // set font weight of the text
              ),
            ),
          ],
        )),
      ),
    );
  }
}
