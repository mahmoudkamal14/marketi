import 'package:get_it/get_it.dart';
import 'package:marketi/core/cache/cache_helper.dart';
import 'package:marketi/features/auth/data/datasource/auth_dependency.dart';
import 'package:marketi/features/home/data/datasource/home_dependency.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  await authDependency();

  await homeDependency();

  getIt.registerFactory<CacheHelper>(() => CacheHelper());
}
