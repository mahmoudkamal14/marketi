import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/di/dependency_injection.dart';
import 'package:marketi/core/function/build_animate_page_route.dart';
import 'package:marketi/core/routes/routes.dart';
import 'package:marketi/features/auth/presentation/logic/login/login_cubit.dart';
import 'package:marketi/features/home/presentation/Screens/category_products_screen.dart';
import 'package:marketi/features/home/presentation/Screens/home_screen.dart';
import 'package:marketi/features/home/presentation/Screens/nav_bar_layout.dart';
import 'package:marketi/features/auth/presentation/screens/login_screen.dart';
import 'package:marketi/features/auth/presentation/screens/reset_password.dart';
import 'package:marketi/features/auth/presentation/widgets/congratulations.dart';
import 'package:marketi/features/auth/presentation/widgets/new_password_screen.dart';
import 'package:marketi/features/auth/presentation/widgets/verificatin_code.dart';
import 'package:marketi/features/home/presentation/logic/home_cubit.dart';
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
          MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => getIt<LoginCubit>()..userModel,
              ),
              BlocProvider(
                create: (context) => getIt<HomeCubit>()
                  ..emitStatesBanners()
                  ..emitStatesCategories()
                  ..emitStatesAllProducts(),
              )
            ],
            child: const NavBarLayout(),
          ),
        );

      case Routes.homeScreen:
        return fadePageRoute(
          BlocProvider(
            create: (context) => getIt<HomeCubit>(),
            child: const HomeScreen(),
          ),
        );

      case Routes.categoryProductsScreen:
        return fadePageRoute(
          BlocProvider(
            create: (context) => getIt<HomeCubit>(),
            child: const CategoryProductsScreen(),
          ),
        );
    }

    return null;
  }
}
