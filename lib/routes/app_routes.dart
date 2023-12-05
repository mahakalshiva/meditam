import 'package:flutter/material.dart';
import 'package:shivam_s_application4/presentation/splash_screen/splash_screen.dart';
import 'package:shivam_s_application4/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:shivam_s_application4/presentation/login_screen/login_screen.dart';
import 'package:shivam_s_application4/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:shivam_s_application4/presentation/main_screen/main_screen.dart';
import 'package:shivam_s_application4/presentation/sound_screen/sound_screen.dart';
import 'package:shivam_s_application4/presentation/sounds_screen/sounds_screen.dart';
import 'package:shivam_s_application4/presentation/profile_tab_container_screen/profile_tab_container_screen.dart';
import 'package:shivam_s_application4/presentation/meditation_screen/meditation_screen.dart';
import 'package:shivam_s_application4/presentation/tools_screen/tools_screen.dart';
import 'package:shivam_s_application4/presentation/sleep_screen/sleep_screen.dart';
import 'package:shivam_s_application4/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String mainScreen = '/main_screen';

  static const String soundScreen = '/sound_screen';

  static const String soundsScreen = '/sounds_screen';

  static const String profilePage = '/profile_page';

  static const String profileTabContainerScreen =
      '/profile_tab_container_screen';

  static const String meditationScreen = '/meditation_screen';

  static const String toolsScreen = '/tools_screen';

  static const String sleepScreen = '/sleep_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        onboardingScreen: OnboardingScreen.builder,
        loginScreen: LoginScreen.builder,
        signUpScreen: SignUpScreen.builder,
        mainScreen: MainScreen.builder,
        soundScreen: SoundScreen.builder,
        soundsScreen: SoundsScreen.builder,
        profileTabContainerScreen: ProfileTabContainerScreen.builder,
        meditationScreen: MeditationScreen.builder,
        toolsScreen: ToolsScreen.builder,
        sleepScreen: SleepScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
