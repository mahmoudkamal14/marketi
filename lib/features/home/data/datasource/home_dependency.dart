import 'package:dio/dio.dart';
import 'package:marketi/core/di/dependency_injection.dart';
import 'package:marketi/core/networking/dio_factory.dart';
import 'package:marketi/features/home/data/datasource/remote_home_datasource.dart';
import 'package:marketi/features/home/data/repository/home_repository.dart';
import 'package:marketi/features/home/domain/repository/base_home_repository.dart';
import 'package:marketi/features/home/domain/usecases/get_all_products_usecase.dart';
import 'package:marketi/features/home/domain/usecases/get_banners_usecase.dart';
import 'package:marketi/features/home/domain/usecases/get_categories_usecase.dart';
import 'package:marketi/features/home/domain/usecases/get_category_products_usecase.dart';
import 'package:marketi/features/home/domain/usecases/search_for_product_usecase.dart';
import 'package:marketi/features/home/presentation/logic/home_cubit.dart';

Future<void> homeDependency() async {
  // Dio & Api Service
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<RemoteHomeDatasource>(
    () => RemoteHomeDatasource(dio),
  );

  getIt.registerLazySingleton<BaseHomeRepository>(
    () => HomeRepository(getIt()),
  );

  /// USECASES
  getIt.registerLazySingleton<GetBannersUsecase>(
    () => GetBannersUsecase(getIt()),
  );
  getIt.registerLazySingleton<GetCategoriesUsecase>(
    () => GetCategoriesUsecase(getIt()),
  );
  getIt.registerLazySingleton<GetAllProductsUsecase>(
    () => GetAllProductsUsecase(getIt()),
  );
  getIt.registerLazySingleton<GetCategoryProductsUsecase>(
    () => GetCategoryProductsUsecase(getIt()),
  );
  getIt.registerLazySingleton<SearchForProductUsecase>(
    () => SearchForProductUsecase(getIt()),
  );

  /// LOGIC

  getIt.registerFactory<HomeCubit>(
      () => HomeCubit(getIt(), getIt(), getIt(), getIt(), getIt()));
}
