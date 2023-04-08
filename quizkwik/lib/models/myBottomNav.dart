import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:quizkwik/screens/addScreen.dart';
import 'package:quizkwik/screens/historyScreen.dart';
import 'package:quizkwik/screens/homeScreen.dart';

import '../screens/profileScreen.dart';
import '../widgets/appColors.dart';

class MyBottomNav extends StatefulWidget {
  const MyBottomNav({super.key});

  @override
  State<MyBottomNav> createState() => _MyBottomNavState();
}

class _MyBottomNavState extends State<MyBottomNav> {
  final controller = PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreen() {
    return [
      HomeScreen(),
      const HistoryScreen(),
      const AddScreen(),
      Container(),
      const ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItem() {
    return [
      PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.home_rounded,
          ),
          title: "Home",
          activeColorPrimary: AppColors.colorPrimary,
          inactiveColorPrimary: AppColors.colorBlackLowEmp),
      PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.history,
          ),
          title: "History",
          activeColorPrimary: AppColors.colorPrimary,
          inactiveColorPrimary: AppColors.colorBlackLowEmp),
      PersistentBottomNavBarItem(
          icon: Container(
            decoration: BoxDecoration(
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                      color: AppColors.colorPrimaryLightest, blurRadius: 3),
                ],
                gradient: const LinearGradient(
                  colors: [
                    AppColors.colorBlueGradientStart,
                    AppColors.colorBlueGradientEnd
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(100)),
            child: const CircleAvatar(
              radius: 40,
              backgroundColor: Colors.transparent,
              child: Icon(
                Icons.add,
                size: 35,
                color: AppColors.colorWhiteHighEmp,
              ),
            ),
          ),
          activeColorPrimary: Colors.transparent,
          inactiveColorPrimary: AppColors.colorBlackLowEmp),
      PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.emoji_events,
          ),
          title: "Leader Board",
          activeColorPrimary: AppColors.colorPrimary,
          inactiveColorPrimary: AppColors.colorBlackLowEmp),
      PersistentBottomNavBarItem(
          icon: const Icon(
            Icons.person,
          ),
          title: "Profile",
          activeColorPrimary: AppColors.colorPrimary,
          inactiveColorPrimary: AppColors.colorBlackLowEmp)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      navBarHeight: 75.h,
      screens: _buildScreen(),
      controller: controller,
      items: _navBarItem(),
      decoration: NavBarDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 10,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
          bottomLeft: Radius.zero,
          bottomRight: Radius.zero,
        ),
      ),
      navBarStyle: NavBarStyle.style15,
    );
  }
}
