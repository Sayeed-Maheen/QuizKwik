import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizkwik/models/myBottomNav.dart';
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
  final _formfield = GlobalKey<FormState>();
  final myController = TextEditingController();
  final quizDescController = TextEditingController();
  final quizNameController = TextEditingController();
  final quizCatController = TextEditingController();
  final quizNumController = TextEditingController();
  final quizDurationController = TextEditingController();
  final quizVisibleController = TextEditingController();
  final quizPointController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: WillPopScope(
        onWillPop: () async {
          Get.offAll(const MyBottomNav());
          return false;
        },
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/pageBG.png"),
                    fit: BoxFit.fill)),
            child: Stack(
              children: [
                Positioned(
                  top: 35,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.offAll(const MyBottomNav());
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
                Positioned(
                  child: Container(
                    margin: const EdgeInsets.only(top: 90),
                    child: NotificationListener<OverscrollIndicatorNotification>(
                      onNotification: (overScroll) {
                        overScroll.disallowGlow();
                        return true;
                      },
                      child: Form(
                        key: _formfield,
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
                                            borderRadius: const BorderRadius.all(
                                                Radius.circular(12)),
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
                                                        color:
                                                        AppColors.colorBlackHighEmp,
                                                        fontWeight: FontWeight.w400),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.all(4),
                                                    child: Text(
                                                      " svg, jpg, png, etc",
                                                      style: TextStyle(
                                                          fontSize: 8.sp,
                                                          color: AppColors
                                                              .colorBlackHighEmp,
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
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16),
                                          child: TextFormField(
                                            controller: quizDescController,
                                            validator: (value) {
                                              bool emailValid = RegExp(
                                                  r"^WS{1,2}:\/\/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}:56789")
                                                  .hasMatch(value!);
                                              if (value.isEmpty) {
                                                return "Enter Description";
                                              } else if (emailValid) {
                                                return "Enter Description";
                                              }
                                              return null;
                                            },
                                            style: const TextStyle(
                                                color: AppColors.colorBlackHighEmp),
                                            decoration: InputDecoration(
                                              hintText: 'Example',
                                              hintStyle: const TextStyle(
                                                  color: AppColors.colorDisabled),
                                              contentPadding: const EdgeInsets.fromLTRB(
                                                  16, 10, 16, 10),
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
                                              errorBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(56),
                                                borderSide: const BorderSide(
                                                  color: AppColors.colorError,
                                                  width: 1,
                                                ),
                                              ),
                                              focusedErrorBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(56),
                                                borderSide: const BorderSide(
                                                  color: AppColors.colorError,
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
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16),
                                          child: TextFormField(
                                            controller: quizNameController,
                                            validator: (value) {
                                              bool emailValid = RegExp(
                                                  r"^WS{1,2}:\/\/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}:56789")
                                                  .hasMatch(value!);
                                              if (value.isEmpty) {
                                                return "Enter Name";
                                              } else if (emailValid) {
                                                return "Enter Name";
                                              }
                                              return null;
                                            },
                                            maxLines: 5,
                                            maxLength: 100,
                                            style: const TextStyle(
                                                color: AppColors.colorBlackHighEmp),
                                            decoration: InputDecoration(
                                              hintText: 'Example',
                                              hintStyle: const TextStyle(
                                                  color: AppColors.colorDisabled),
                                              contentPadding: const EdgeInsets.fromLTRB(
                                                  16, 10, 16, 10),
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
                                              errorBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(16),
                                                borderSide: const BorderSide(
                                                  color: AppColors.colorError,
                                                  width: 1,
                                                ),
                                              ),
                                              focusedErrorBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(16),
                                                borderSide: const BorderSide(
                                                  color: AppColors.colorError,
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
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16),
                                          child: TextFormField(
                                            validator: (value) {
                                              bool emailValid = RegExp(
                                                  r"^WS{1,2}:\/\/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}:56789")
                                                  .hasMatch(value!);
                                              if (value.isEmpty) {
                                                return "Enter Number";
                                              } else if (emailValid) {
                                                return "Enter Number";
                                              }
                                              return null;
                                            },
                                            controller: myController,
                                            keyboardType: TextInputType.number,
                                            style: const TextStyle(
                                                color: AppColors.colorBlackHighEmp),
                                            decoration: InputDecoration(
                                              hintText: 'Enter number',
                                              hintStyle: const TextStyle(
                                                  color: AppColors.colorDisabled),
                                              contentPadding: const EdgeInsets.fromLTRB(
                                                  16, 10, 16, 10),
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
                                              errorBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(56),
                                                borderSide: const BorderSide(
                                                  color: AppColors.colorError,
                                                  width: 1,
                                                ),
                                              ),
                                              focusedErrorBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(56),
                                                borderSide: const BorderSide(
                                                  color: AppColors.colorError,
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
                                            validator: (value) {
                                              bool emailValid = RegExp(
                                                  r"^WS{1,2}:\/\/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}:56789")
                                                  .hasMatch(value!);
                                              if (value.isEmpty) {
                                                return "Enter Points";
                                              } else if (emailValid) {
                                                return "Enter Points";
                                              }
                                              return null;
                                            },
                                            controller: quizPointController,
                                            style: const TextStyle(
                                                color: AppColors.colorBlackHighEmp),
                                            decoration: InputDecoration(
                                              hintText: 'Points',
                                              hintStyle: const TextStyle(
                                                  color: AppColors.colorDisabled),
                                              contentPadding: const EdgeInsets.fromLTRB(
                                                  16, 10, 16, 10),
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
                                              errorBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(56),
                                                borderSide: const BorderSide(
                                                  color: AppColors.colorError,
                                                  width: 1,
                                                ),
                                              ),
                                              focusedErrorBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(56),
                                                borderSide: const BorderSide(
                                                  color: AppColors.colorError,
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
                  if (_formfield.currentState!.validate()) {
                    // Clear the text fields
                    quizDescController.clear();
                    quizNameController.clear();
                    quizCatController.clear();
                    quizPointController.clear();

                    // Parse the integer value from the text field
                    int? value = int.tryParse(myController.text);

                    // Check if the parsed value is not null
                    if (value != null) {
                      // Navigate to the QuizSectionScreen and pass the parsed integer value as a parameter
                      Get.to(
                        QuizSectionScreen(value: value),
                      );
                    }
                  }

                },
                text: "Next",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
