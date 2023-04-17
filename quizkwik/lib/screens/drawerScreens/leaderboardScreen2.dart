import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizkwik/models/leaderboardScreenModel.dart';
import 'package:quizkwik/models/myBottomNav.dart';

import '../../widgets/appColors.dart';

class LeaderboardScreen2 extends StatefulWidget {
  const LeaderboardScreen2({Key? key}) : super(key: key);

  @override
  State<LeaderboardScreen2> createState() => _LeaderboardScreen2State();
}

class _LeaderboardScreen2State extends State<LeaderboardScreen2>
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
                child: Padding(
                  padding: const EdgeInsets.only(top: 35, bottom: 35,left: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Text(
                        'Leader Board',
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
                padding: const EdgeInsets.only(top: 90),
                child: Positioned(
                  child: SingleChildScrollView(
                    child: Container(
                      height: 573.h,
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
                                Tab(text: 'Today'),
                                Tab(text: 'This Week'),
                                Tab(text: 'All Time')
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
                                  child: LeaderboardScreenModel(),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: LeaderboardScreenModel(),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: LeaderboardScreenModel(),
                                ),
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
