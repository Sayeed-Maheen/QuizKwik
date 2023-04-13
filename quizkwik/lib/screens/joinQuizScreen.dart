import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizkwik/models/completedHistoryModel.dart';
import 'package:quizkwik/models/joinQuizModel.dart';
import 'package:quizkwik/models/myBottomNav.dart';

import '../models/createdHistoryModel.dart';
import '../widgets/appColors.dart';

class JoinQuizScreen extends StatefulWidget {
  const JoinQuizScreen({Key? key}) : super(key: key);

  @override
  State<JoinQuizScreen> createState() => _JoinQuizScreenState();
}

class _JoinQuizScreenState extends State<JoinQuizScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Container(
              height: 115.h,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.colorBlueGradientStart,
                    AppColors.colorBlueGradientEnd
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.offAll(const MyBottomNav());
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: AppColors.colorWhiteHighEmp,
                        )),
                    SizedBox(width: 8.w),
                    Text(
                      'Join Quiz',
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: AppColors.colorWhiteHighEmp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              child: SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.only(top: 100),
                  height: 590.h,
                  decoration: BoxDecoration(
                      color: AppColors.colorWhiteHighEmp,
                      borderRadius: BorderRadius.circular(24)),
                  child: Column(
                    children: [
                      Container(
                        height: 44.h,
                        margin: const EdgeInsets.symmetric(horizontal: 24),
                        child: TabBar(
                          indicator: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(0),
                                  bottomRight: Radius.circular(24),
                                  topLeft: Radius.circular(0),
                                  bottomLeft: Radius.circular(24)),
                              color: AppColors.colorPrimary),
                          unselectedLabelColor: AppColors.colorBlackHighEmp,
                          labelStyle: const TextStyle(),
                          labelColor: AppColors.colorWhiteHighEmp,
                          tabs: const [
                            Tab(text: 'Public'),
                            Tab(text: 'Friends'),
                            Tab(text: 'Join by ID')
                          ],
                          controller: _tabController,
                          indicatorSize: TabBarIndicatorSize.tab,
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          physics: const BouncingScrollPhysics(),
                          controller: _tabController,
                          children: const [
                            JoinQuizModel(),
                            CompletedHistoryModel(),
                            CreatedHistoryModel(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
