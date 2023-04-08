import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quizkwik/routes/routes.dart';
import 'package:quizkwik/widgets/appColors.dart';
import 'package:quizkwik/widgets/customSwatch.dart';

void main() {
  // The entry point of the application. This function runs the application
  // by creating an instance of MyApp and passing it to runApp() function.
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // The build method of the root widget of the application. It returns
    // a ScreenUtilInit widget that provides a screen size adaptation solution
    // for the application. Inside it, there is a StatusBarWrapper widget that
    // sets the color and brightness of the status bar, and a GetMaterialApp
    // widget that is the root of the application widget tree.
    return ScreenUtilInit(
      designSize: Size(360, 690), // The design size of the screen
      minTextAdapt: true, // Whether to adapt text size or not
      splitScreenMode: true, // Whether to support split screen mode or not
      builder: (context, child) {
        return StatusBarWrapper(
          child: GetMaterialApp(
            debugShowCheckedModeBanner:
                false, // Whether to show the debug banner or not
            theme: ThemeData(
              primarySwatch: createMaterialColor(AppColors
                  .colorPrimary), // The primary color of the application
              fontFamily:
                  "Barlow", // The default font family of the application
            ),
            initialRoute: RoutesClass
                .getSplashScreenRoute(), // The initial route of the application
            getPages:
                RoutesClass.routes, // The list of routes of the application
            routes: {
              // Your custom routes can be added here
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
    // A widget that wraps its child widget and sets the color and brightness
    // of the status bar based on the brightness of the platform (dark or light).
    final brightness = MediaQuery.of(context).platformBrightness;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // The color of the status bar
        statusBarIconBrightness: brightness == Brightness.light
            ? Brightness.dark
            : Brightness.light, // The brightness of the status bar icons
        statusBarBrightness: brightness, // The brightness of the status bar
      ),
      child: child, // The child widget that is wrapped by StatusBarWrapper
    );
  }
}
