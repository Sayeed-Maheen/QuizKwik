import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizkwik/widgets/appColors.dart';
import 'package:quizkwik/widgets/dropDownWidget.dart';

import '../jsonDataModel/ongoingHistoryJsonDataModel.dart';
import '../widgets/playButton.dart';

class CreatedHistoryModel extends StatefulWidget {
  const CreatedHistoryModel({Key? key}) : super(key: key);

  @override
  State<CreatedHistoryModel> createState() => _CreatedHistoryModelState();
}

class _CreatedHistoryModelState extends State<CreatedHistoryModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorWhiteHighEmp,
      body: Column(
        children: [
          SizedBox(height: 12.h),
          Center(child: DropdownWidget()),
          SizedBox(height: 12.h),
          Expanded(
            child: FutureBuilder(
              future: ReadJsonData(),
              builder: (context, data) {
                if (data.hasError) {
                  return Center(child: Text("${data.error}"));
                } else if (data.hasData) {
                  var items = data.data as List<OngoingHistoryDataModel>;
                  return ListView.builder(
                      padding: const EdgeInsets.only(bottom: 80),
                      itemCount: items == null ? 0 : items.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(
                              left: 16, right: 16, bottom: 16),
                          child: Container(
                            padding: const EdgeInsets.all(16),
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
                                        image: AssetImage(
                                            items[index].image.toString()),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(bottom: 8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 4.h),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8, right: 8),
                                            child: Text(
                                              items[index].title.toString(),
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors
                                                      .colorBlackHighEmp),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8, right: 8, bottom: 8),
                                            child: Text(
                                              items[index].subtitle.toString(),
                                              style: TextStyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color:
                                                      AppColors.colorDisabled),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0),
                                                    child: Image.asset(
                                                      "assets/images/diamond.png",
                                                      height: 16.h,
                                                      width: 16.w,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 4, right: 12),
                                                    child: Text(
                                                      items[index]
                                                          .amount
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
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
                                                      color: AppColors
                                                          .colorDisabled),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 2, right: 8),
                                                    child: Text(items[index]
                                                        .time
                                                        .toString()),
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
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.play_arrow,
                                      color: AppColors.colorWhiteHighEmp,
                                    ))
                              ],
                            ),
                          ),
                        );
                      });
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }

  Future<List<OngoingHistoryDataModel>> ReadJsonData() async {
    final jsondata =
        await rootBundle.loadString('assets/jsonFiles/ongoingHistory.json');
    final list = json.decode(jsondata) as List<dynamic>;
    return list.map((e) => OngoingHistoryDataModel.fromJson(e)).toList();
  }
}
