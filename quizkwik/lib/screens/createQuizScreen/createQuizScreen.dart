import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizkwik/screens/createQuizScreen/quizSectionScreen.dart';
import 'package:quizkwik/widgets/appColors.dart';
import 'package:quizkwik/widgets/myButton.dart';

import '../../models/quizCategoryModel.dart';
import '../../models/quizDurationModel.dart';
import '../../models/quizVisibilityModel.dart';
import '../../widgets/myContainer.dart';

class CreateQuizScreen extends StatefulWidget {
  const CreateQuizScreen({Key? key}) : super(key: key);

  @override
  State<CreateQuizScreen> createState() => _CreateQuizScreenState();
}

class _CreateQuizScreenState extends State<CreateQuizScreen> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/pageBG.png"),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 45, bottom: 16),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(Icons.arrow_back,
                          color: AppColors.colorWhiteHighEmp)),
                  Text(
                    "Create Quiz",
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: AppColors.colorWhiteHighEmp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Expanded(
              child: NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (overScroll){
                  overScroll.disallowGlow();
                 return true;
                },
                child: SingleChildScrollView(
                  child: Column(
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
                            padding: const EdgeInsets.only(
                                left: 16, right: 16, bottom: 16),
                            child: DottedBorder(
                              borderType: BorderType.RRect,
                              radius: const Radius.circular(12),
                              color: AppColors.colorPrimary,
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(12)),
                                child: SizedBox(
                                  height: 128.h,
                                  width: double.infinity,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 128, vertical: 20),
                                        child: Image.asset(
                                            "assets/images/imageIcon.png",
                                            height: 40.h,
                                            width: 40.w),
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
                                style: const TextStyle(
                                    color: AppColors.colorBlackHighEmp),
                                decoration: InputDecoration(
                                  hintText: 'Example',
                                  hintStyle: const TextStyle(
                                      color: AppColors.colorDisabled),
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(16, 10, 16, 10),
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
                                style: const TextStyle(
                                    color: AppColors.colorBlackHighEmp),
                                decoration: InputDecoration(
                                  hintText: 'Example',
                                  hintStyle: const TextStyle(
                                      color: AppColors.colorDisabled),
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(16, 10, 16, 10),
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
                                controller: myController,
                                keyboardType: TextInputType.number,
                                style: const TextStyle(
                                    color: AppColors.colorBlackHighEmp),
                                decoration: InputDecoration(

                                  hintText: 'Enter number',
                                  hintStyle: const TextStyle(
                                      color: AppColors.colorDisabled),
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(16, 10, 16, 10),
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
                              padding: const EdgeInsets.only(
                                  left: 16, right: 16, bottom: 16),
                              child: TextFormField(
                                style: const TextStyle(
                                    color: AppColors.colorBlackHighEmp),
                                decoration: InputDecoration(
                                  hintText: 'Points',
                                  hintStyle: const TextStyle(
                                      color: AppColors.colorDisabled),
                                  contentPadding:
                                      const EdgeInsets.fromLTRB(16, 10, 16, 10),
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
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80.h,
        decoration: BoxDecoration(
          color: AppColors.colorWhiteHighEmp,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 10,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: MyButton(
            onPressed: () {
              int? value = int.tryParse(myController.text);
              if (value != null) {
                Get.to( QuizSectionScreen(value: value),

                );
              }

            },
            text: "Next",
          ),
        ),
      ),
    );
  }
}
