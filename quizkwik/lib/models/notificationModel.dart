import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizkwik/widgets/appColors.dart';

import '../jsonDataModel/ongoingHistoryJsonDataModel.dart';
import '../widgets/playButton.dart';

class NotificationModel extends StatefulWidget {
  const NotificationModel({Key? key}) : super(key: key);

  @override
  State<NotificationModel> createState() => _NotificationModelState();
}

class _NotificationModelState extends State<NotificationModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorWhiteHighEmp,
      body: FutureBuilder(
        future: ReadJsonData(),
        builder: (context, data) {
          if (data.hasError) {
            return Center(child: Text("${data.error}"));
          } else if (data.hasData) {
            var items = data.data as List<OngoingHistoryDataModel>;
            return ListView.builder(
                padding: const EdgeInsets.only(top: 6, bottom: 80),
                itemCount: items == null ? 0 : items.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 8),
                              width: 65.w,
                              height: 60.h,
                              child: Image(
                                image:
                                    AssetImage(items[index].image.toString()),
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 4.h),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8, right: 8),
                                    child: Text(
                                      items[index].title.toString(),
                                      style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w600,
                                          color: AppColors.colorBlackHighEmp),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 8, right: 8, bottom: 8),
                                    child: Text(
                                      items[index].subtitle.toString(),
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
                                            padding: EdgeInsets.only(
                                                left: 4, right: 12),
                                            child: Text(
                                              items[index].amount.toString(),
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
                                          Icon(Icons.alarm_on,
                                              size: 16,
                                              color: AppColors.colorDisabled),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 2, right: 8),
                                            child: Text(
                                                items[index].time.toString()),
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
                            child: Icon(
                              Icons.play_arrow,
                              color: AppColors.colorWhiteHighEmp,
                            )),
                        Icon(
                          Icons.close,
                          color: AppColors.colorError,
                        )
                      ],
                    ),
                  );
                });
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Future<List<OngoingHistoryDataModel>> ReadJsonData() async {
    final jsondata =
        await rootBundle.loadString('assets/jsonFiles/notification.json');
    final list = json.decode(jsondata) as List<dynamic>;
    return list.map((e) => OngoingHistoryDataModel.fromJson(e)).toList();
  }
}
