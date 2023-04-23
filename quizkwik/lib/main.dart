import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizkwik/routes/routes.dart';
import 'package:quizkwik/widgets/appColors.dart';
import 'package:quizkwik/widgets/customSwatch.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: createMaterialColor(AppColors.colorPrimary),
            fontFamily: "Barlow",
          ),
          initialRoute: RoutesClass.getSplashScreenRoute(),
          getPages: RoutesClass.routes,
          routes: const {},
        );
      },
    );
  }
}
