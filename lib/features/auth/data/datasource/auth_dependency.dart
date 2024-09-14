import 'package:dio/dio.dart';
import 'package:marketi/core/di/dependency_injection.dart';
import 'package:marketi/core/networking/dio_factory.dart';
import 'package:marketi/features/auth/data/datasource/remote_auth_datasource.dart';
import 'package:marketi/features/auth/data/repository/auth_repository.dart';
import 'package:marketi/features/auth/domain/repository/base_auth_repository.dart';
import 'package:marketi/features/auth/domain/usecases/login_with_email_password_usecase.dart';
import 'package:marketi/features/auth/domain/usecases/register_with_email_password_usecase.dart';
import 'package:marketi/features/auth/presentation/logic/login/login_cubit.dart';
import 'package:marketi/features/auth/presentation/logic/register/register_cubit.dart';

Future<void> authDependency() async {
  // Dio & Api Service
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<RemoteAuthDatasource>(
    () => RemoteAuthDatasource(dio),
  );

  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepository(getIt()),
  );

  getIt.registerLazySingleton<BaseAuthRepository>(
    () => AuthRepository(getIt()),
  );

  /// USECASES
  getIt.registerLazySingleton<LoginWithEmailPasswordUsecase>(
    () => LoginWithEmailPasswordUsecase(getIt()),
  );
  getIt.registerLazySingleton<RegisterWithEmailPasswordUsecase>(
    () => RegisterWithEmailPasswordUsecase(getIt()),
  );

  /// LOGIC

  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
  getIt.registerLazySingleton<RegisterCubit>(() => RegisterCubit(getIt()));
}
