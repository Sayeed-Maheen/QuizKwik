import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:quizkwik/widgets/myButton.dart';
import 'package:quizkwik/widgets/myContainer.dart';

import '../widgets/appColors.dart';
import 'genderModel.dart';

class ProfileSettingsScreenModel extends StatefulWidget {
  const ProfileSettingsScreenModel({Key? key}) : super(key: key);

  @override
  State<ProfileSettingsScreenModel> createState() =>
      _ProfileSettingsScreenModelState();
}

class _ProfileSettingsScreenModelState
    extends State<ProfileSettingsScreenModel> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordController2 = TextEditingController();
  final passwordController3 = TextEditingController();
  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  var obscureText = true;
  var obscureText2 = true;
  var visibleText = true;
  @override
  Widget build(BuildContext context) {
    return MyContainer(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Name',
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.colorBlackHighEmp),
          ),
          SizedBox(height: 8.h),
          Center(
            child: Container(
              width: 300.w,
              child: TextFormField(
                controller: nameController,
                style: TextStyle(color: AppColors.colorBlackHighEmp),
                decoration: InputDecoration(
                  hintText: 'Name',
                  hintStyle: TextStyle(
                    color: AppColors.colorBlackLowEmp,
                    fontWeight: FontWeight.w300,
                  ),
                  contentPadding: EdgeInsets.fromLTRB(16, 20, 16, 15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(56),
                    borderSide: BorderSide(
                      color: AppColors.colorWhiteLowEmp,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(56),
                    borderSide: BorderSide(
                      color: AppColors.colorWhiteLowEmp,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 12.h),
          // email field
          Text(
            'Your Email',
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.colorBlackHighEmp),
          ),
          SizedBox(height: 8.h),
          Center(
            child: Container(
              width: 300.w,
              child: TextFormField(
                controller: emailController,
                validator: (value) {
                  bool emailValid = RegExp(
                          r"^WS{1,2}:\/\/\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}:56789")
                      .hasMatch(value!);
                  if (value.isEmpty) {
                    return "Enter Email";
                  } else if (emailValid) {
                    return "Enter valid Email";
                  }
                },
                style: TextStyle(color: AppColors.colorBlackHighEmp),
                decoration: InputDecoration(
                  hintText: 'mail@example.com',
                  hintStyle: TextStyle(
                      color: AppColors.colorBlackLowEmp,
                      fontWeight: FontWeight.w300),
                  contentPadding: EdgeInsets.fromLTRB(16, 20, 16, 15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(56),
                    borderSide: BorderSide(
                      color: AppColors.colorWhiteLowEmp,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(56),
                    borderSide: BorderSide(
                      color: AppColors.colorWhiteLowEmp,
                      width: 1,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(56),
                    borderSide: BorderSide(
                      color: AppColors.colorError,
                      width: 1,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(56),
                    borderSide: BorderSide(
                      color: AppColors.colorError,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            'Gender',
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.colorBlackHighEmp),
          ),
          SizedBox(height: 8.h),
          GenderModel(),
          SizedBox(height: 12.h),
          Text(
            'Birth date',
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.colorBlackHighEmp),
          ),
          SizedBox(height: 8.h),
          TextField(
            controller: dateinput, //editing controller of this TextField
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(16, 20, 16, 15),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(56),
                  borderSide: BorderSide(
                    color: AppColors.colorWhiteLowEmp,
                    width: 1,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(56),
                  borderSide: BorderSide(
                    color: AppColors.colorWhiteLowEmp,
                    width: 1,
                  ),
                ),
                suffixIcon: Icon(
                  Icons.event,
                  size: 24,
                  color: AppColors.colorPrimary,
                ),
                hintText: "Birth date" //label text of field
                ),

            readOnly:
                true, //set it true, so that user will not able to edit text
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(
                      2000), //DateTime.now() - not to allow to choose before today.
                  lastDate: DateTime(2101));

              if (pickedDate != null) {
                print(
                    pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                String formattedDate =
                    DateFormat('yyyy-MM-dd').format(pickedDate);
                print(
                    formattedDate); //formatted date output using intl package =>  2021-03-16
                //you can implement different kind of Date Format here according to your requirement

                setState(() {
                  dateinput.text =
                      formattedDate; //set output date to TextField value.
                });
              } else {
                print("Date is not selected");
              }
            },
          ),
          SizedBox(height: 12.h),
          Text(
            'Old Password',
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.colorBlackHighEmp),
          ),
          SizedBox(height: 8.h),
          Center(
            child: Container(
              width: 300.w,
              child: TextFormField(
                controller: passwordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Password";
                  } else if (passwordController.text.length < 6) {
                    return "Password length should be more than 6 characters";
                  }
                },
                style: TextStyle(color: AppColors.colorBlackHighEmp),
                obscureText: obscureText,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                      color: AppColors.colorBlackLowEmp,
                      fontWeight: FontWeight.w300,
                      fontSize: 12.sp),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    child: obscureText
                        ? Icon(Icons.visibility_off,
                            color: AppColors.colorPrimary, size: 20)
                        : Icon(Icons.visibility_outlined,
                            color: AppColors.colorPrimary, size: 20),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(16, 20, -6, 15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(56),
                    borderSide: BorderSide(
                      color: AppColors.colorWhiteLowEmp,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(56),
                    borderSide:
                        BorderSide(color: AppColors.colorWhiteLowEmp, width: 1),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(56),
                    borderSide: BorderSide(
                      color: AppColors.colorError,
                      width: 1,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(56),
                    borderSide: BorderSide(
                      color: AppColors.colorError,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            'New Password',
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.colorBlackHighEmp),
          ),
          SizedBox(height: 8.h),
          Center(
            child: Container(
              width: 300.w,
              child: TextFormField(
                controller: passwordController2,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Password";
                  } else if (passwordController.text.length < 6) {
                    return "Password length should be more than 6 characters";
                  }
                },
                style: TextStyle(color: AppColors.colorBlackHighEmp),
                obscureText: visibleText,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                      color: AppColors.colorBlackLowEmp,
                      fontWeight: FontWeight.w300,
                      fontSize: 12.sp),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        visibleText = !visibleText;
                      });
                    },
                    child: visibleText
                        ? Icon(Icons.visibility_off,
                            color: AppColors.colorPrimary, size: 20)
                        : Icon(Icons.visibility_outlined,
                            color: AppColors.colorPrimary, size: 20),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(16, 20, -6, 15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(56),
                    borderSide: BorderSide(
                      color: AppColors.colorWhiteLowEmp,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(56),
                    borderSide:
                        BorderSide(color: AppColors.colorWhiteLowEmp, width: 1),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(56),
                    borderSide: BorderSide(
                      color: AppColors.colorError,
                      width: 1,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(56),
                    borderSide: BorderSide(
                      color: AppColors.colorError,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Text(
            'Rewrite Password',
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.colorBlackHighEmp),
          ),
          SizedBox(height: 8.h),
          Center(
            child: Container(
              width: 300.w,
              child: TextFormField(
                controller: passwordController3,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Password";
                  } else if (passwordController.text.length < 6) {
                    return "Password length should be more than 6 characters";
                  }
                },
                style: TextStyle(color: AppColors.colorBlackHighEmp),
                obscureText: obscureText2,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                      color: AppColors.colorBlackLowEmp,
                      fontWeight: FontWeight.w300,
                      fontSize: 12.sp),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        obscureText2 = !obscureText2;
                      });
                    },
                    child: obscureText2
                        ? Icon(Icons.visibility_off,
                            color: AppColors.colorPrimary, size: 20)
                        : Icon(Icons.visibility_outlined,
                            color: AppColors.colorPrimary, size: 20),
                  ),
                  contentPadding: EdgeInsets.fromLTRB(16, 20, -6, 15),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(56),
                    borderSide: BorderSide(
                      color: AppColors.colorWhiteLowEmp,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(56),
                    borderSide:
                        BorderSide(color: AppColors.colorWhiteLowEmp, width: 1),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(56),
                    borderSide: BorderSide(
                      color: AppColors.colorError,
                      width: 1,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(56),
                    borderSide: BorderSide(
                      color: AppColors.colorError,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          MyButton(onPressed: () {}, text: "Save Changes")
        ],
      ),
    ));
  }
}
