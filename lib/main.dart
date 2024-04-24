import 'package:flutter/material.dart';
import 'package:marketi/core/database/cache_helper.dart';
import 'package:marketi/core/routes/app_router.dart';
import 'package:marketi/marketi_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // setupGetIt();
  await CacheHelper().init();
  runApp(
    MarketiApp(
      appRouter: AppRouter(),
    ),
  );
}


//? dart run build_runner build --delete-conflicting-outputs

//! dart run flutter_native_splash:create --path=flutter_native_splash.yaml