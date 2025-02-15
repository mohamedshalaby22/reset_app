import 'package:flutter/material.dart';
import 'package:reset_app/core/routing/route_helper.dart';
import 'package:reset_app/core/routing/routes.dart';
import 'package:reset_app/features/auth/login/ui/login_screen.dart';
import 'package:reset_app/features/auth/signup/ui/signup_screen.dart';
import 'package:reset_app/features/auth/verification/ui/screens/otp_screen.dart';
import 'package:reset_app/features/auth/verification/ui/screens/phone_number_screen.dart';
import 'package:reset_app/features/main_navigation_bar/main_navigation_bar.dart';
import '../../features/onboarding/ui/onboarding_screen.dart';

class AppRouter {
  Route? generteRouter(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboardingScreen:
        return buildRoute(const OnBoardingScreen());
      case Routes.loginScreen:
        return buildRoute(const LoginScreen());
      case Routes.signupScreen:
        return buildRoute(const SignupScreen());
      case Routes.phoneNumberScreen:
        return buildRoute(const PhoneNumberScreen());
      case Routes.otpScreen:
        return buildRoute(const OtpScreen());
      case Routes.mainNavigationBar:
        return buildRoute(const MainNavigationBar());

      default:
        return null;
    }
  }
}
