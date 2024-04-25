import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:marketi/core/database/cache_helper.dart';
import 'package:marketi/core/networking/api_service.dart';
import 'package:marketi/core/networking/dio_factory.dart';
import 'package:marketi/features/login/data/repo/login_repo.dart';
import 'package:marketi/features/login/logic/cubit/login_cubit.dart';
import 'package:marketi/features/signup/data/repo/sign_up_repo.dart';
import 'package:marketi/features/signup/logic/cubit/sign_up_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & Api Service
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  //* Login

  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));

  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  //! Sign Up

  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));

  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));

  //* CacheHelper

  getIt.registerFactory<CacheHelper>(() => CacheHelper());
}
