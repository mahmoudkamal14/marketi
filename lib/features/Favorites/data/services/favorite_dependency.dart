import 'package:dio/dio.dart';
import 'package:marketi/core/di/dependency_injection.dart';
import 'package:marketi/core/networking/dio_factory.dart';
import 'package:marketi/features/Favorites/data/repository/favorite_repository.dart';
import 'package:marketi/features/Favorites/data/services/favorite_services.dart';

Future<void> favoriteDependency() async {
  // Dio & Api Service
  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<FavoriteServices>(() => FavoriteServices(dio));

  getIt.registerLazySingleton<FavoriteRepository>(
      () => FavoriteRepository(getIt()));
}
