// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/cache/cache_helper.dart';
import 'package:marketi/core/routes/app_router.dart';
import 'package:marketi/core/routes/routes.dart';

class MarketiApp extends StatelessWidget {
  MarketiApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  dynamic onBoarding = CacheHelper().getData(key: Routes.onBoardingScreen);
  dynamic login = CacheHelper().getData(key: Routes.loginScreen);
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    return ScreenUtilInit(
      designSize: Size(width, height),
      minTextAdapt: true,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: MaterialApp(
          theme: ThemeData(useMaterial3: false),
          debugShowCheckedModeBanner: false,
          initialRoute: sharedStartApp(),
          onGenerateRoute: appRouter.generateRoute,
        ),
      ),
    );
  }

  String sharedStartApp() {
    if (login == true) {
      return Routes.navBarLayout;
    } else if (onBoarding == true) {
      return Routes.loginScreen;
    } else {
      return Routes.onBoardingScreen;
    }
  }
}
