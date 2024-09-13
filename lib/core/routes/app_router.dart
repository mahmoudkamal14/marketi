import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/function/build_animate_page_route.dart';

import 'package:marketi/core/routes/routes.dart';
import 'package:marketi/features/auth/data/datasource/auth_dependency.dart';
import 'package:marketi/features/auth/presentation/logic/login/login_cubit.dart';
import 'package:marketi/features/home/presentation/Screens/home_screen.dart';
import 'package:marketi/features/home/presentation/Screens/nav_bar_layout.dart';
import 'package:marketi/features/auth/presentation/screens/login_screen.dart';
import 'package:marketi/features/auth/presentation/screens/reset_password.dart';
import 'package:marketi/features/auth/presentation/widgets/congratulations.dart';
import 'package:marketi/features/auth/presentation/widgets/new_password_screen.dart';
import 'package:marketi/features/auth/presentation/widgets/verificatin_code.dart';
import 'package:marketi/features/onboarding/screens/onboarding_screen.dart';
import 'package:marketi/features/auth/presentation/screens/register_screen.dart';

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
          builder: (_) => const RegisterScreen(),
        );

      case Routes.loginScreen:
        return fadePageRoute(
          BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
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
        return fadePageRoute(
          BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const NavBarLayout(),
          ),
        );

      case Routes.homeScreen:
        return fadePageRoute(
          const HomeScreen(),
        );

      default:
    }

    return null;
  }
}
