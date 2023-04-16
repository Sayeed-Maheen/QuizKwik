import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizkwik/models/completedHistoryModel.dart';
import 'package:quizkwik/models/myBottomNav.dart';
import 'package:quizkwik/models/ongoingHistoryModel.dart';

import '../../models/allBadgesModel.dart';
import '../../models/createdHistoryModel.dart';
import '../../models/statsModel.dart';
import '../../widgets/appColors.dart';

class AchievementsScreen extends StatefulWidget {
  const AchievementsScreen({Key? key}) : super(key: key);

  @override
  State<AchievementsScreen> createState() => _AchievementsScreenState();
}

class _AchievementsScreenState extends State<AchievementsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.offAll(const MyBottomNav());
        return false;
      },
      child: Scaffold(
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
                child: Container(
                  margin: const EdgeInsets.only(top: 50, bottom: 50),
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
                        'Achievements',
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: AppColors.colorWhiteHighEmp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Positioned(
                  child: SingleChildScrollView(
                    child: Container(
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
                                Tab(text: 'Stats'),
                                Tab(text: 'All Badges'),
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
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: StatsModel(),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(top: 8.0),
                                    child: AllBadgesModel()),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}