import 'package:marketi/core/networking/api_result.dart';
import 'package:marketi/features/home/data/models/banner_response_model.dart';

abstract class BaseHomeRepository {
  Future<ApiResult<BannerResponseModel>> getBanners();
}
