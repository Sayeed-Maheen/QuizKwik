import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../widgets/appColors.dart';

TextEditingController _textController = TextEditingController();

class QuizCategoryModel extends StatefulWidget {
  const QuizCategoryModel({Key? key}) : super(key: key);

  @override
  State<QuizCategoryModel> createState() => _QuizCategoryModelState();
}

class _QuizCategoryModelState extends State<QuizCategoryModel> {
  int _selectedIndex = -1;
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      builder: (BuildContext context) {
        // Create a list of options to show in the BottomSheet
        List<String> options = [
          'Science',
          'Math',
          'History',
          'Music',
          'Movies',
          'Sports',
          'Fashion'
        ];

        // Create a ListView of the options
        return Container(
          height: 300.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "Quiz Category",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: AppColors.colorBlackHighEmp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.close, color: AppColors.colorBlackHighEmp),
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
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns
                      childAspectRatio: 3, // Width/height ratio of grid items
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemCount: options.length,
                    itemBuilder: (BuildContext context, int index) {
                      bool isSelected = _selectedIndex ==
                          index; // check if the current index is selected
                      return GestureDetector(
                        onTap: () {
                          // Update the value of the TextFormField with the selected option
                          setState(() {
                            _textController.text = options[index];
                            _selectedIndex = index; // set the selected index
                          });
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 50.h,
                          width: 152.w,
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
                          child: Center(
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
            _showBottomSheet(context);
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
                Icon(Icons.arrow_drop_down_sharp,
                    color: AppColors.colorBlackHighEmp)
              ],
            ),
          ),
        ));
  }
}
