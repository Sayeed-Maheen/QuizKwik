import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:quizkwik/models/myDrawerModel.dart';
import 'package:quizkwik/screens/authScreens/forgotPasswordScreen/forgotPasswordScreen.dart';
import 'package:quizkwik/screens/authScreens/forgotPasswordScreen/forgotPasswordVerifyEmailScreen.dart';
import 'package:quizkwik/screens/authScreens/forgotPasswordScreen/resetPasswordScreen.dart';
import 'package:quizkwik/screens/authScreens/signInScreen.dart';
import 'package:quizkwik/screens/authScreens/signUpScreen/signUpScreen.dart';
import 'package:quizkwik/screens/authScreens/signUpScreen/verifyEmailScreen.dart';
import 'package:quizkwik/screens/drawerScreens/privacyPolicyScreen.dart';
import 'package:quizkwik/screens/drawerScreens/profileSettingsScreen.dart';
import 'package:quizkwik/screens/onboardingScreen/onboardingScreen.dart';
import 'package:quizkwik/screens/onboardingScreen/splashScreen.dart';
import 'package:quizkwik/screens/profileScreen.dart';

import '../screens/historyScreen.dart';

class RoutesClass {
  static String splashScreen = "/";
  static String getSplashScreenRoute() => splashScreen;
  static String onBoardingScreen = "/onBoarding";
  static String getOnboardingScreenRoute() => onBoardingScreen;
  static String signInScreen = "/signIn";
  static String getSignInScreenRoute() => signInScreen;
  static String signUpScreen = "/signUp";
  static String getSignUpScreenRoute() => signUpScreen;
  static String verifyEmailScreen = "/verifyEmail";
  static String getVerifyEmailScreenRoute() => verifyEmailScreen;
  static String forgotPasswordScreen = "/forgotPassword";
  static String getForgotPasswordScreenRoute() => forgotPasswordScreen;
  static String forgotPasswordVerifyEmailScreen = "/forgotPasswordVerifyEmail";
  static String getForgotPasswordVerifyEmailScreenRoute() =>
      forgotPasswordVerifyEmailScreen;
  static String resetPasswordScreen = "/resetPassword";
  static String getResetPasswordScreenRoute() => resetPasswordScreen;
  static String myDrawerModel = "/myDrawerModel";
  static String getMyDrawerModelRoute() => resetPasswordScreen;
  static String profileScreen = "/profileScreen";
  static String getProfileScreenRoute() => profileScreen;
  static String profileSettingsScreen = "/profileSettingsScreen";
  static String getProfileSettingsScreenRoute() => profileSettingsScreen;
  static String historyScreen = "/historyScreen";
  static String getHistoryScreenRoute() => historyScreen;
  static String privacyPolicyScreen = "/privacyPolicyScreen";
  static String getPrivacyPolicyScreenRoute() => privacyPolicyScreen;

  // ---- Routes ----
  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: onBoardingScreen, page: () => const OnBoardingScreen()),
    GetPage(name: signInScreen, page: () => SignInScreen()),
    GetPage(name: signInScreen, page: () => const SignUpScreen()),
    GetPage(name: signInScreen, page: () => const VerifyEmailScreen()),
    GetPage(
        name: forgotPasswordScreen, page: () => const ForgotPasswordScreen()),
    GetPage(
        name: forgotPasswordVerifyEmailScreen,
        page: () => const ForgotPasswordVerifyEmailScreen()),
    GetPage(name: resetPasswordScreen, page: () => const ResetPasswordScreen()),
    GetPage(
      name: myDrawerModel,
      page: () => const MyDrawerModel(),
    ),
    GetPage(name: profileScreen, page: () => const ProfileScreen()),
    GetPage(
        name: profileSettingsScreen, page: () => const ProfileSettingsScreen()),
    GetPage(name: historyScreen, page: () => const HistoryScreen()),
    GetPage(name: privacyPolicyScreen, page: () => const PrivacyPolicyScreen()),
  ];
}
