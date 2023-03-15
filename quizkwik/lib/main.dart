import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizkwik/routes/routes.dart';
import 'package:quizkwik/widgets/appColors.dart';
import 'package:quizkwik/widgets/customSwatch.dart';

class ThemeController extends GetxController {
  final _isDarkMode = false.obs;
  bool get isDarkMode => _isDarkMode.value;
  set isDarkMode(bool value) => _isDarkMode.value = value;

  void updateStatusBarColor(Color color) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: color,
      statusBarIconBrightness: isDarkMode ? Brightness.light : Brightness.dark,
    ));
  }
}

class MyApp extends StatelessWidget {
  final ThemeController _themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetBuilder<ThemeController>(
          builder: (_) => GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              brightness: _themeController.isDarkMode
                  ? Brightness.dark
                  : Brightness.light,
              primarySwatch: createMaterialColor(AppColors.colorPrimary),
              fontFamily: "Barlow",
            ),
            initialRoute: RoutesClass.getSplashScreenRoute(),
            getPages: RoutesClass.routes,
            routes: {
              // your routes here
            },
          ),
        );
      },
    );
  }
}

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}
