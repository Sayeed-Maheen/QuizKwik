import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/appColors.dart';

TextEditingController _textController = TextEditingController();

class QuizDurationModel extends StatefulWidget {
  const QuizDurationModel({Key? key}) : super(key: key);

  @override
  State<QuizDurationModel> createState() => _QuizDurationModelState();
}

class _QuizDurationModelState extends State<QuizDurationModel> {
  int _selectedIndex2 = -1;
  void _showBottomSheet2(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      builder: (BuildContext context) {
        // Create a list of options to show in the BottomSheet
        List<String> options = [
          '2 min',
          '5 min',
          '10 min',
        ];

        // Create a ListView of the options
        return SizedBox(
          height: 250.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "Duration",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.colorBlackHighEmp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close,
                        color: AppColors.colorBlackHighEmp),
                    onPressed: () {
                      Get.back();
                    },
                  )
                ],
              ),
              SizedBox(height: 16.h),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.builder(
                    itemCount: options.length,
                    itemBuilder: (BuildContext context, int index) {
                      bool isSelected = _selectedIndex2 ==
                          index; // check if the current index is selected
                      return GestureDetector(
                        onTap: () {
                          // Update the value of the TextFormField with the selected option
                          setState(() {
                            _textController.text = options[index];
                            _selectedIndex2 = index; // set the selected index
                          });
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          height: 50.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              width: 1,
                              color: AppColors.colorWhiteLowEmp,
                            ),
                            color: isSelected
                                ? AppColors.colorSecondary
                                : Colors
                                    .transparent, // set the container color based on selection
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                options[index],
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: isSelected
                                      ? Colors.white
                                      : AppColors
                                          .colorBlackHighEmp, // set the text color based on selection
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: GestureDetector(
          onTap: () {
            // Call the _showBottomSheet function to show the BottomSheet
            _showBottomSheet2(context);
          },
          child: Container(
            height: 45.h,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(56),
              border: Border.all(
                color: AppColors.colorWhiteLowEmp,
                width: 1,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _textController.text.isEmpty
                      ? 'Select an option'
                      : _textController.text,
                  style: TextStyle(
                    color: _textController.text.isEmpty
                        ? AppColors.colorDisabled
                        : AppColors.colorBlackHighEmp,
                  ),
                ),
                const Icon(Icons.arrow_drop_down_sharp,
                    color: AppColors.colorBlackHighEmp)
              ],
            ),
          ),
        ));
  }
}
