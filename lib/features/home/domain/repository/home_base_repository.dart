import 'package:marketi/core/networking/api_result.dart';
import 'package:marketi/features/home/domain/entities/banners_entity.dart';

abstract class HomeBaseRepository {
  Future<ApiResult<BannersEntity>> getBanners();
}
