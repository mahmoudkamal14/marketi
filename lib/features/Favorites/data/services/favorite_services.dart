import 'package:dio/dio.dart';
import 'package:marketi/core/networking/api_constants.dart';
import 'package:marketi/features/Favorites/data/models/favorite_response_model.dart';
import 'package:retrofit/retrofit.dart';

part 'favorite_services.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class FavoriteServices {
  factory FavoriteServices(Dio dio, {String baseUrl}) = _FavoriteServices;

  @GET(ApiConstants.favorites)
  Future<FavoriteResponseModel> getFavorites(
    @Header('Authorization') String userToken,
  );

  @POST(ApiConstants.favorites)
  Future<FavoriteResponseModel> addProductFavorites(
    @Header('Authorization') String userToken,
    @Path("id") int id,
  );
}
