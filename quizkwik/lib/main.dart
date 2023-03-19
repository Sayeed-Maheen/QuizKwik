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

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return StatusBarWrapper(
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
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

class StatusBarWrapper extends StatelessWidget {
  final Widget child;

  const StatusBarWrapper({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness:
            brightness == Brightness.light ? Brightness.dark : Brightness.light,
        statusBarBrightness: brightness,
      ),
      child: child,
    );
  }
}
