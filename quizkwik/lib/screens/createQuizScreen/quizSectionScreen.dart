import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizkwik/models/myBottomNav.dart';
import 'package:quizkwik/screens/createQuizScreen/finishQuizScreen.dart';

import '../../widgets/appColors.dart';
import '../../widgets/myButton.dart';
import '../../widgets/myContainer.dart';

class QuizSectionScreen extends StatefulWidget {
  final int value;
  const QuizSectionScreen({Key? key, required this.value}) : super(key: key);

  @override
  State<QuizSectionScreen> createState() => _QuizSectionScreenState();
}

class _QuizSectionScreenState extends State<QuizSectionScreen> {
  final PageController pageController = PageController();
  int currentPage = 0;
  bool _isItemVisible = false;

  void _toggleItem() {
    setState(() {
      _isItemVisible = !_isItemVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/pageBG.png"),
                  fit: BoxFit.fill)),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 35, bottom: 8),
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
              child: PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: pageController,
                  itemCount: widget.value,
                  itemBuilder: (BuildContext context, int index) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 6.h),
                          MyContainer(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child: Text("Set Questions",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        color: AppColors.colorBlackHighEmp,
                                        fontWeight: FontWeight.w600)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child: Text("Question Name",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: AppColors.colorBlackHighEmp,
                                        fontWeight: FontWeight.w600)),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: TextFormField(
                                      style: const TextStyle(
                                          color: AppColors.colorBlackHighEmp),
                                      decoration: InputDecoration(
                                          hintText: 'Question',
                                          hintStyle: const TextStyle(
                                              color: AppColors.colorDisabled),
                                          contentPadding:
                                              const EdgeInsets.fromLTRB(
                                                  16, 10, 16, 10),
                                          enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(56),
                                            borderSide: const BorderSide(
                                              color: AppColors.colorWhiteLowEmp,
                                              width: 1,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(56),
                                              borderSide: const BorderSide(
                                                color:
                                                    AppColors.colorWhiteLowEmp,
                                                width: 1,
                                              )))),
                                ),
                              ),
                              GestureDetector(
                                onTap: _toggleItem,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 16,
                                          top: 16,
                                          right: 6,
                                          bottom: 16),
                                      child: Text("Add features",
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              color:
                                                  AppColors.colorBlackHighEmp,
                                              fontWeight: FontWeight.w600)),
                                    ),
                                    const Icon(
                                      Icons.playlist_add,
                                      size: 16,
                                      color: AppColors.colorBlackHighEmp,
                                    )
                                  ],
                                ),
                              ),
                              _isItemVisible
                                  ? Padding(
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
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 128,
                                                      vertical: 20),
                                                  child: Image.asset(
                                                      "assets/images/audioIcon.png",
                                                      height: 40.h,
                                                      width: 40.w),
                                                ),
                                                Text(
                                                  "Click to upload",
                                                  style: TextStyle(
                                                      fontSize: 14.sp,
                                                      color: AppColors
                                                          .colorBlackHighEmp,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(4),
                                                  child: Text("Mp3, Wav, m4a",
                                                      style: TextStyle(
                                                          fontSize: 8.sp,
                                                          color: AppColors
                                                              .colorBlackHighEmp,
                                                          fontWeight:
                                                              FontWeight.w400)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  : const SizedBox.shrink(),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 6, bottom: 16),
                                child: Text(
                                  "Question Answer",
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
                                        style: const TextStyle(
                                            color: AppColors.colorBlackHighEmp),
                                        decoration: InputDecoration(
                                            hintText: 'Option 1',
                                            hintStyle: const TextStyle(
                                                color: AppColors.colorDisabled),
                                            contentPadding:
                                                const EdgeInsets.fromLTRB(
                                                    16, 10, 16, 10),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(56),
                                              borderSide: const BorderSide(
                                                color:
                                                    AppColors.colorWhiteLowEmp,
                                                width: 1,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(56),
                                                borderSide: const BorderSide(
                                                  color: AppColors
                                                      .colorWhiteLowEmp,
                                                  width: 1,
                                                ))))),
                              ),
                              SizedBox(height: 8.h),
                              Center(
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: TextFormField(
                                        style: const TextStyle(
                                            color: AppColors.colorBlackHighEmp),
                                        decoration: InputDecoration(
                                            hintText: 'Option 2',
                                            hintStyle: const TextStyle(
                                                color: AppColors.colorDisabled),
                                            contentPadding:
                                                const EdgeInsets.fromLTRB(
                                                    16, 10, 16, 10),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(56),
                                              borderSide: const BorderSide(
                                                color:
                                                    AppColors.colorWhiteLowEmp,
                                                width: 1,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(56),
                                                borderSide: const BorderSide(
                                                  color: AppColors
                                                      .colorWhiteLowEmp,
                                                  width: 1,
                                                ))))),
                              ),
                              SizedBox(height: 8.h),
                              Center(
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: TextFormField(
                                        style: const TextStyle(
                                            color: AppColors.colorBlackHighEmp),
                                        decoration: InputDecoration(
                                            hintText: 'Option 3',
                                            hintStyle: const TextStyle(
                                                color: AppColors.colorDisabled),
                                            contentPadding:
                                                const EdgeInsets.fromLTRB(
                                                    16, 10, 16, 10),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(56),
                                                borderSide: const BorderSide(
                                                  color: AppColors
                                                      .colorWhiteLowEmp,
                                                  width: 1,
                                                )),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(56),
                                                borderSide: const BorderSide(
                                                  color: AppColors
                                                      .colorWhiteLowEmp,
                                                  width: 1,
                                                ))))),
                              ),
                              SizedBox(height: 8.h),
                              Center(
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: TextFormField(
                                        style: const TextStyle(
                                            color: AppColors.colorBlackHighEmp),
                                        decoration: InputDecoration(
                                            hintText: 'Option 4',
                                            hintStyle: const TextStyle(
                                                color: AppColors.colorDisabled),
                                            contentPadding:
                                                const EdgeInsets.fromLTRB(
                                                    16, 10, 16, 10),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(56),
                                                borderSide: const BorderSide(
                                                  color: AppColors
                                                      .colorWhiteLowEmp,
                                                  width: 1,
                                                )),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(56),
                                                borderSide: const BorderSide(
                                                  color: AppColors
                                                      .colorWhiteLowEmp,
                                                  width: 1,
                                                ))))),
                              ),
                              SizedBox(height: 16.h),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, right: 6, bottom: 16),
                                child: Text("Correct Answer",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: AppColors.colorBlackHighEmp,
                                        fontWeight: FontWeight.w600)),
                              ),
                              Center(
                                child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16),
                                    child: TextFormField(
                                        style: const TextStyle(
                                            color: AppColors.colorBlackHighEmp),
                                        decoration: InputDecoration(
                                            hintText: 'Answer',
                                            hintStyle: const TextStyle(
                                                color: AppColors.colorDisabled),
                                            contentPadding:
                                                const EdgeInsets.fromLTRB(
                                                    16, 10, 16, 10),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(56),
                                                borderSide: const BorderSide(
                                                  color: AppColors
                                                      .colorWhiteLowEmp,
                                                  width: 1,
                                                )),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(56),
                                                borderSide: const BorderSide(
                                                  color: AppColors
                                                      .colorWhiteLowEmp,
                                                  width: 1,
                                                ))))),
                              ),
                              SizedBox(height: 16.h),
                            ],
                          )),
                          SizedBox(height: 16.h),
                        ],
                      ),
                    );
                  }),
            ),
          ]),
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
                if (currentPage < widget.value - 1) {
                  currentPage++;
                  pageController.animateToPage(currentPage,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease);
                } else {
                  Get.offAll(const FinishQuizScreen());
                }
              },
              text: "Next",
            ),
          ),
        ),
      ),
    );
  }
}
