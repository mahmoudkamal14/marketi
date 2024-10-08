import 'package:marketi/core/cache/shared_pref_keys.dart';
import 'package:marketi/core/networking/api_result.dart';
import 'package:marketi/features/Favorites/data/models/favorite_request_model.dart';
import 'package:marketi/features/Favorites/data/models/favorite_response_model.dart';
import 'package:marketi/features/Favorites/data/models/get_favorite_response_model.dart';
import 'package:marketi/features/Favorites/data/services/favorite_services.dart';

class FavoriteRepository {
  final FavoriteServices _favoriteServices;

  FavoriteRepository(this._favoriteServices);

  Future<ApiResult<GetFavoriteResponseModel>> getFavorites() async {
    try {
      final response = await _favoriteServices.getFavorites(userToken);

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }

  Future<ApiResult<FavoriteResponseModel>> addProductFavorites(
      FavoriteRequestModel favoriteRequestModel) async {
    try {
      final response = await _favoriteServices.addProductFavorites(
        userToken,
        favoriteRequestModel,
      );

      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }
}
