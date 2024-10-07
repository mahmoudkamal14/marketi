import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/cache/shared_pref_helper.dart';
import 'package:marketi/core/cache/shared_pref_keys.dart';
import 'package:marketi/core/di/dependency_injection.dart';
import 'package:marketi/core/routes/app_router.dart';
import 'package:marketi/core/routes/extentions.dart';

import 'package:marketi/marketi_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();

  await checkIfLoggedInUser();
  await ScreenUtil.ensureScreenSize();
  runApp(MarketiApp(appRouter: AppRouter()));
}

checkIfLoggedInUser() async {
  dynamic onboarding =
      await SharedPrefHelper.getBool(SharedPrefKeys.onboarding);

  String? token = await SharedPrefHelper.getString(SharedPrefKeys.userToken);
  if (!token.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
  if (onboarding) {
    isOnboardingApp = true;
  } else {
    isOnboardingApp = false;
  }
}

//? dart run build_runner build --delete-conflicting-outputs

//! dart run flutter_native_splash:create --path=flutter_native_splash.yaml