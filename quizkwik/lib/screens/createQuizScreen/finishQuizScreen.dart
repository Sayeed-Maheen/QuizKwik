import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizkwik/screens/createQuizScreen/questionAnswerScreen.dart';
import 'package:quizkwik/widgets/playQuizButton.dart';
import 'package:share_plus/share_plus.dart';

import '../../widgets/appColors.dart';
import '../../widgets/myContainer.dart';

class FinishQuizScreen extends StatelessWidget {
  const FinishQuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/pageBG.png"),
                    fit: BoxFit.fill)),
            child: Column(children: [
              Container(
                  margin: const EdgeInsets.only(top: 90, left: 16, right: 16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          "Math Quiz",
                          style: TextStyle(
                              fontSize: 20.sp,
                              color: AppColors.colorBlackHighEmp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: Image.asset("assets/images/mathQuizImage.png",
                              height: 128.h)),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, bottom: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Image.asset("assets/images/diamond.png",
                                        height: 16.h, width: 16.w),
                                    SizedBox(width: 4.w),
                                    Text(
                                      "500",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: AppColors.colorBlackHighEmp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 12.w),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.alarm_on,
                                      color: AppColors.colorDisabled,
                                      size: 16,
                                    ),
                                    SizedBox(width: 4.w),
                                    Text(
                                      "5 min",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: AppColors.colorBlackHighEmp,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.edit_note,
                                    color: AppColors.colorBlackHighEmp,
                                    size: 18),
                                SizedBox(width: 4.w),
                                Text(
                                  "Edit",
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      color: AppColors.colorBlackHighEmp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, bottom: 16),
                        child: Row(
                          children: [
                            Text(
                              "ID:",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: AppColors.colorBlackHighEmp,
                                  fontWeight: FontWeight.w400),
                            ),
                            GestureDetector(
                              onTap: () {
                                Clipboard.setData(
                                    const ClipboardData(text: "053231"));
                                const snackBar = SnackBar(
                                  content: Text('Text copied to clipboard'),
                                  duration: Duration(milliseconds: 1000),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
                              },
                              child: Text(
                                "#053231",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.colorBlackHighEmp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, bottom: 8),
                        child: Text(
                          "Description ",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: AppColors.colorBlackHighEmp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, bottom: 16),
                        child: Text(
                          "Lorem ipsum dolor sit amet consectetur. Malesuada venenatis vestibulum turpis suspendisse sed risus augue. Ultrices tellus ut gravida tellus ultricies mattis ipsum nec. Tincidunt purus libero odio amet eget id morbi. Vitae consectetur libero tempus id blandit odio sit.Enim mauris rhoncus aliquam mi lorem est risus. Viverra ultricies vitae amet sagittis ante. Sed sed eget vel etiam tellus. Nunc arcu maecenas convallis morbi. Libero elit purus nibh adipiscing sollicitudin facilisi eu euismod. Eget pellentesque metus viverra nisl. Condimentum.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: AppColors.colorDisabled,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            PlayQuizButton(
                                onPressed: () {
                                  Get.to(const QuestionAnswerScreen());
                                },
                                text: "Play Quiz"),
                            Padding(
                              padding: const EdgeInsets.only(right: 24),
                              child: GestureDetector(
                                onTap: () {
                                  Share.share("ID: #053231");
                                },
                                child: Row(
                                  children: [
                                    const Icon(Icons.share,
                                        color: AppColors.colorPrimary,
                                        size: 20),
                                    SizedBox(width: 4.w),
                                    Text(
                                      "Share",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: AppColors.colorPrimary,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.h),
                    ],
                  )),
            ]),
          ),
          Positioned(
            top: 35,
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
          )
        ],
      )),
    );
  }
}
