import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizkwik/models/joinQuizBrowseModel.dart';
import 'package:quizkwik/models/joinQuizScreenDropdownModel.dart';
import 'package:quizkwik/screens/createQuizScreen/questionAnswerScreen2.dart';
import 'package:quizkwik/widgets/appColors.dart';

import '../widgets/playButton.dart';

class JoinQuizModel extends StatefulWidget {
  const JoinQuizModel({Key? key}) : super(key: key);

  @override
  State<JoinQuizModel> createState() => _JoinQuizModelState();
}

class _JoinQuizModelState extends State<JoinQuizModel> {
  final int _defaultItemCount = 5;
  int _currentItemCount = 5;

  List<dynamic> _jsonList = [];
  @override
  void initState() {
    super.initState();
    _loadJsonList().then((jsonList) {
      setState(() {
        _jsonList = jsonList;
        _currentItemCount = _defaultItemCount;
      });
    });
  }

  void _loadMoreItems() {
    setState(() {
      _currentItemCount += _defaultItemCount;
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorWhiteHighEmp,
      body: SizedBox(
        height: double.infinity,
        child: Column(
          children: [
            const JoinQuizScreenDropdownModel(),
            Expanded(
              child: ListView.builder(
                itemCount: _currentItemCount,
                itemBuilder: (BuildContext context, int index) {
                  if (index == _currentItemCount - 1 &&
                      _currentItemCount < _jsonList.length) {
                    return Center(
                      child: GestureDetector(
                        onTap: _loadMoreItems,
                        child: Container(
                            height: 29.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              border: Border.all(
                                color: AppColors.colorWhiteLowEmp,
                                width: 1,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 4),
                                  child: Text(
                                    'LOAD MORE',
                                    style: TextStyle(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.colorBlackHighEmp),
                                  ),
                                ),
                                const Icon(
                                  Icons.loop,
                                  color: AppColors.colorBlackHighEmp,
                                  size: 12,
                                )
                              ],
                            )),
                      ),
                    );
                  }
                  return Container(
                    margin:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 16, bottom: 16),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[50],
                          borderRadius: BorderRadius.circular(
                            16,
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 8),
                                width: 65.w,
                                height: 60.h,
                                child: Image(
                                  image: AssetImage(_jsonList[index]['image']),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 4.h),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8, right: 8),
                                      child: Text(
                                        _jsonList[index]['title'],
                                        style: TextStyle(
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.colorBlackHighEmp),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8, right: 8, bottom: 8),
                                      child: Text(
                                        _jsonList[index]['subtitle'],
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.colorDisabled),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Image.asset(
                                                "assets/images/diamond.png",
                                                height: 16.h,
                                                width: 16.w,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 4, right: 12),
                                              child: Text(
                                                _jsonList[index]['amount'],
                                                style: TextStyle(
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: AppColors
                                                        .colorBlackHighEmp),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Icon(Icons.alarm_on,
                                                size: 16,
                                                color: AppColors.colorDisabled),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 2, right: 8),
                                              child: Text(
                                                  _jsonList[index]['time']),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          PlayButton(
                              onPressed: () {
                                Get.to(const QuestionAnswerScreen2());
                              },
                              child: const Icon(
                                Icons.play_arrow,
                                color: AppColors.colorWhiteHighEmp,
                              ))
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<List<dynamic>> _loadJsonList() async {
    // Load the JSON data from file or network
    String jsonData = await DefaultAssetBundle.of(context).loadString(
        "assets/jsonFiles/joinQuiz.json"); // Replace with your own data source
    return json.decode(jsonData);
  }
}
