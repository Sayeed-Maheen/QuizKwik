import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizkwik/models/quizCategoryModel.dart';
import 'package:quizkwik/models/quizDurationModel.dart';
import 'package:quizkwik/models/quizVisibilityModel.dart';
import 'package:quizkwik/widgets/myContainer.dart';

import '../widgets/appColors.dart';

class CreateQuizModel extends StatefulWidget {
  const CreateQuizModel({Key? key}) : super(key: key);

  @override
  State<CreateQuizModel> createState() => _CreateQuizModelState();
}

class _CreateQuizModelState extends State<CreateQuizModel> {
  final countController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyContainer(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Set Quiz Thumbnail",
                style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.colorBlackHighEmp,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(12),
                color: AppColors.colorPrimary,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  child: SizedBox(
                    height: 128.h,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 128, vertical: 20),
                          child: Image.asset("assets/images/imageIcon.png",
                              height: 40.h, width: 40.w),
                        ),
                        Text(
                          "Click to upload",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.colorBlackHighEmp,
                              fontWeight: FontWeight.w400),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4),
                          child: Text(
                            " svg, jpg, png, etc",
                            style: TextStyle(
                                fontSize: 8.sp,
                                color: AppColors.colorBlackHighEmp,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        )),
        SizedBox(height: 16.h),
        MyContainer(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Quiz Description",
                style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.colorBlackHighEmp,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  style: const TextStyle(color: AppColors.colorBlackHighEmp),
                  decoration: InputDecoration(
                    hintText: 'Example',
                    hintStyle: const TextStyle(color: AppColors.colorDisabled),
                    contentPadding: EdgeInsets.fromLTRB(16, 10, 16, 10),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(56),
                      borderSide: const BorderSide(
                        color: AppColors.colorWhiteLowEmp,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(56),
                      borderSide: const BorderSide(
                        color: AppColors.colorWhiteLowEmp,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Quiz Name",
                style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.colorBlackHighEmp,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  maxLines: 5,
                  maxLength: 100,
                  style: const TextStyle(color: AppColors.colorBlackHighEmp),
                  decoration: InputDecoration(
                    hintText: 'Example',
                    hintStyle: const TextStyle(color: AppColors.colorDisabled),
                    contentPadding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                        color: AppColors.colorWhiteLowEmp,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                        color: AppColors.colorWhiteLowEmp,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Quiz Category",
                style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.colorBlackHighEmp,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const QuizCategoryModel(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Number of Question",
                style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.colorBlackHighEmp,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  controller: countController,
                  style: const TextStyle(color: AppColors.colorBlackHighEmp),
                  decoration: InputDecoration(
                    hintText: 'Enter number',
                    hintStyle: const TextStyle(color: AppColors.colorDisabled),
                    contentPadding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(56),
                      borderSide: const BorderSide(
                        color: AppColors.colorWhiteLowEmp,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(56),
                      borderSide: const BorderSide(
                        color: AppColors.colorWhiteLowEmp,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Quiz Duration",
                style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.colorBlackHighEmp,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const QuizDurationModel(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Visible To",
                style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.colorBlackHighEmp,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const QuizVisibilityModel(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                "Points",
                style: TextStyle(
                    fontSize: 14.sp,
                    color: AppColors.colorBlackHighEmp,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: TextFormField(
                  style: const TextStyle(color: AppColors.colorBlackHighEmp),
                  decoration: InputDecoration(
                    hintText: 'Points',
                    hintStyle: const TextStyle(color: AppColors.colorDisabled),
                    contentPadding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(56),
                      borderSide: const BorderSide(
                        color: AppColors.colorWhiteLowEmp,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(56),
                      borderSide: const BorderSide(
                        color: AppColors.colorWhiteLowEmp,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )),
        SizedBox(height: 16.h),
      ],
    );
  }

  void getNum() {
    final n = countController.text;
  }
}
