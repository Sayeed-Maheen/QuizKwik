import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizkwik/models/myBottomNav.dart';
import 'package:quizkwik/models/redeemPointsAllModel.dart';

import '../../widgets/appColors.dart';

class RedeemPointsScreen extends StatefulWidget {
  const RedeemPointsScreen({Key? key}) : super(key: key);

  @override
  State<RedeemPointsScreen> createState() => _RedeemPointsScreenState();
}

class _RedeemPointsScreenState extends State<RedeemPointsScreen>
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
                  padding: const EdgeInsets.only(top: 35, bottom: 35),
                  child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
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
                            'Redeem Points',
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: AppColors.colorWhiteHighEmp,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, right: 16),
                        child: Container(
                          height: 30.h,
                          width: 91.w,
                          decoration: BoxDecoration(
                            color: AppColors.colorWhiteHighEmp,
                            borderRadius: BorderRadius.circular(48),
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                  color: AppColors.colorPrimaryLightest,
                                  blurRadius: 3),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/diamond.png",
                                height: 10.h,
                                width: 13.w,
                              ),
                              SizedBox(width: 5.w),
                              Text(
                                "12000",
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.colorPrimary,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Positioned(
                  child: SingleChildScrollView(
                    child: Container(
                      height: 605.h,
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
                                Tab(text: 'All'),
                                Tab(text: 'Subscription'),
                                Tab(text: 'Gift Cards')
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
                                  child: RedeemPointsAllModel(),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: RedeemPointsAllModel(),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: RedeemPointsAllModel(),
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
