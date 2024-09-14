import 'package:marketi/core/networking/api_result.dart';
import 'package:marketi/features/home/data/models/banner_response_model.dart';
import 'package:marketi/features/home/domain/repository/base_home_repository.dart';

class GetBannersUsecase {
  final BaseHomeRepository _repository;

  GetBannersUsecase(this._repository);

  Future<ApiResult<BannerResponseModel>> call() async {
    return await _repository.getBanners();
  }
}
