import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:share_plus/share_plus.dart';

import '../widgets/appColors.dart';

class ProfilePhotoChangeModel extends StatefulWidget {
  const ProfilePhotoChangeModel({Key? key}) : super(key: key);

  @override
  State<ProfilePhotoChangeModel> createState() =>
      _ProfilePhotoChangeModelState();
}

class _ProfilePhotoChangeModelState extends State<ProfilePhotoChangeModel> {
  String selectedImagePath = '';
  final double imageSize = 200.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Center(
          child: Container(
            height: imageSize,
            width: imageSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[200],
            ),
            child: Center(
              child: selectedImagePath == ''
                  ? Image.asset(
                      'assets/images/profileIcon.png',
                      height: imageSize,
                      width: imageSize,
                    )
                  : ClipOval(
                      child: Image.file(
                        File(selectedImagePath),
                        height: imageSize,
                        width: imageSize,
                        fit: BoxFit.fill,
                      ),
                    ),
            ),
          ),
        ),
        Positioned(
          top: 155,
          right: 110,
          child: GestureDetector(
            onTap: () async {
              selectedImagePath = await selectImageFromGallery();
              if (selectedImagePath != '') {
                setState(() {});
              }
            },
            child: Container(
              height: 35.h,
              width: 40.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.colorSecondary),
              child: const Icon(
                Icons.edit,
                color: AppColors.colorWhiteHighEmp,
              ),
            ),
          ),
        ),
      ],
    );
  }

  selectImageFromGallery() async {
    XFile? file = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 10,
    );
    if (file != null) {
      return file.path;
    } else {
      return '';
    }
  }
}
