import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:quizkwik/screens/homeScreen.dart';

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
      Container(),
      Container(),
      Container(),
      Container(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItem() {
    return [
      PersistentBottomNavBarItem(
          icon: Icon(
            Icons.home_rounded,
          ),
          title: "Home",
          activeColorPrimary: AppColors.colorPrimary,
          inactiveColorPrimary: AppColors.colorBlackLowEmp),
      PersistentBottomNavBarItem(
          icon: Icon(
            Icons.history,
          ),
          title: "History",
          activeColorPrimary: AppColors.colorPrimary,
          inactiveColorPrimary: AppColors.colorBlackLowEmp),
      PersistentBottomNavBarItem(
          icon: Icon(
            Icons.add,
            color: AppColors.colorWhiteHighEmp,
          ),
          activeColorPrimary: AppColors.colorPrimary,
          inactiveColorPrimary: AppColors.colorBlackLowEmp),
      PersistentBottomNavBarItem(
          icon: Icon(
            Icons.emoji_events,
          ),
          title: "Leader Board",
          activeColorPrimary: AppColors.colorPrimary,
          inactiveColorPrimary: AppColors.colorBlackLowEmp),
      PersistentBottomNavBarItem(
          icon: Icon(
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
      navBarHeight: 80.h,
      screens: _buildScreen(),
      controller: controller,
      items: _navBarItem(),
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.only(
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
