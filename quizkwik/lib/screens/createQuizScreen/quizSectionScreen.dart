import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widgets/appColors.dart';
import '../../widgets/myContainer.dart';

class QuizSectionScreen extends StatelessWidget {
  final int value;
  const QuizSectionScreen({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/pageBG.png"), fit: BoxFit.fill)),
      child: Column(children: [
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
          child: PageView.builder(
              itemCount: value,
              itemBuilder: (BuildContext contex, int index) {
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
                            child: Text(
                              "Set Questions",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  color: AppColors.colorBlackHighEmp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              "Question Name",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: AppColors.colorBlackHighEmp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: TextFormField(
                                style: const TextStyle(
                                    color: AppColors.colorBlackHighEmp),
                                decoration: InputDecoration(
                                  hintText: 'Question',
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
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 16, top: 16, right: 6, bottom: 16),
                                child: Text(
                                  "Add features",
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      color: AppColors.colorBlackHighEmp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              const Icon(
                                Icons.playlist_add,
                                size: 16,
                                color: AppColors.colorBlackHighEmp,
                              )
                            ],
                          ),
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
                              padding:
                              const EdgeInsets.symmetric(horizontal: 16),
                              child: TextFormField(
                                style: const TextStyle(
                                    color: AppColors.colorBlackHighEmp),
                                decoration: InputDecoration(
                                  hintText: 'Question',
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
                          SizedBox(height: 8.h),
                          Center(
                            child: Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 16),
                              child: TextFormField(
                                style: const TextStyle(
                                    color: AppColors.colorBlackHighEmp),
                                decoration: InputDecoration(
                                  hintText: 'Question',
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
                          SizedBox(height: 8.h),
                          Center(
                            child: Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 16),
                              child: TextFormField(
                                style: const TextStyle(
                                    color: AppColors.colorBlackHighEmp),
                                decoration: InputDecoration(
                                  hintText: 'Question',
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
                          SizedBox(height: 8.h),
                          Center(
                            child: Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 16),
                              child: TextFormField(
                                style: const TextStyle(
                                    color: AppColors.colorBlackHighEmp),
                                decoration: InputDecoration(
                                  hintText: 'Question',
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
                          SizedBox(height: 16.h),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16, right: 6, bottom: 16),
                            child: Text(
                              "Correct Answer",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: AppColors.colorBlackHighEmp,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 16),
                              child: TextFormField(
                                style: const TextStyle(
                                    color: AppColors.colorBlackHighEmp),
                                decoration: InputDecoration(
                                  hintText: 'Question',
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
    ));
  }
}
