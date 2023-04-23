import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizkwik/models/myBottomNav.dart';

import '../../models/allBadgesModel.dart';
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
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: WillPopScope(
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
                ),
                Positioned(
                  child: SingleChildScrollView(
                    child: Container(
                      margin: const EdgeInsets.only(top: 90),
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
                Positioned(
                  top: 35,
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
                      Text(
                        'Achievements',
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: AppColors.colorWhiteHighEmp,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
