import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quizkwik/models/awaitsForYouModel.dart';
import 'package:quizkwik/models/spinAndWinModel.dart';
import 'package:quizkwik/models/watchVideoModel.dart';

import '../../models/myBottomNav.dart';
import '../../widgets/appColors.dart';

class EarnPointsScreen extends StatefulWidget {
  const EarnPointsScreen({Key? key}) : super(key: key);

  @override
  State<EarnPointsScreen> createState() => _EarnPointsScreenState();
}

class _EarnPointsScreenState extends State<EarnPointsScreen>
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
            Stack(
              children: [
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
                    padding: const EdgeInsets.only(top: 35, bottom: 35),
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
                          'Earn Points',
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
                        height: 600.h,
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
                                  Tab(text: 'Watch Video'),
                                  Tab(text: 'Spin & Win'),
                                  Tab(text: 'Shop & Earn')
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
                                  WatchVideoModel(),
                                  SpinAndWinModel(),
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 16),
                                    child: AwaitForYouModel(),
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
