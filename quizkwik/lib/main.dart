import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizkwik/routes/routes.dart';
import 'package:quizkwik/widgets/appColors.dart';
import 'package:quizkwik/widgets/customSwatch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  @override
  void initState() {
    super.initState();
    _updateStatusBarColor();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return FutureBuilder(
            future: _updateStatusBarColor(),
            builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
              return GetMaterialApp(
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  brightness: _isDarkMode ? Brightness.dark : Brightness.light,
                  primarySwatch: createMaterialColor(AppColors.colorPrimary),
                  fontFamily: "Barlow",
                ),
                initialRoute: RoutesClass.getSplashScreenRoute(),
                getPages: RoutesClass.routes,
                routes: const {},
              );
            });
      },
    );
  }

  Future<void> _updateStatusBarColor() async {
    await Future.delayed(
        Duration.zero); // Wait for the next frame to allow the app to build
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: _isDarkMode ? Brightness.light : Brightness.dark,
    ));
  }

  @override
  void dispose() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness:
          Brightness.dark, // Reset status bar text color when the app is closed
    ));
    super.dispose();
  }
}
