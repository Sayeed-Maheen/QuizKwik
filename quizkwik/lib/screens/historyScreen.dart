import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizkwik/models/completedHistoryModel.dart';
import 'package:quizkwik/models/myBottomNav.dart';
import 'package:quizkwik/models/ongoingHistoryModel.dart';

import '../models/createdHistoryModel.dart';
import '../widgets/appColors.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen>
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
              height: 100.h,
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
                      'History',
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
                  height: 572.h,
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
                            Tab(text: 'Ongoing'),
                            Tab(text: 'Completed'),
                            Tab(text: 'Created')
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
                            OngoingHistoryModel(),
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
