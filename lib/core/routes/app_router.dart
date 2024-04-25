import 'package:flutter/material.dart';
import 'package:marketi/core/routes/routes.dart';
import 'package:marketi/features/home/home_screen.dart';
import 'package:marketi/features/home/nav_bar_layout.dart';
import 'package:marketi/features/login/ui/screens/login_screen.dart';
import 'package:marketi/features/login/ui/screens/reset_password.dart';
import 'package:marketi/features/login/ui/widgets/congratulations.dart';
import 'package:marketi/features/login/ui/widgets/new_password_screen.dart';
import 'package:marketi/features/login/ui/widgets/verificatin_code.dart';
import 'package:marketi/features/onboarding/ui/screens/onboarding_screen.dart';
import 'package:marketi/features/signup/ui/screens/sign_up_dcreen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // Extract the route name from the settings.
    final String routeName = settings.name!;

    switch (routeName) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );

      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (_) => const SignUpScrren(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

      case Routes.resetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const ResetPasswordScreen(),
        );

      case Routes.verificationCodeScreen:
        return MaterialPageRoute(
          builder: (_) => const VerificationCode(),
        );

      case Routes.newPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const NewPasswordScreen(),
        );

      case Routes.congratulations:
        return MaterialPageRoute(
          builder: (_) => const Congratulations(),
        );

      case Routes.navBarLayout:
        return MaterialPageRoute(
          builder: (_) => const NavBarLayout(),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
    }

    return null;
  }
}
