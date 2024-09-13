import 'package:marketi/core/networking/api_result.dart';
import 'package:marketi/features/home/domain/entities/banners_entity.dart';
import 'package:marketi/features/home/domain/repository/home_base_repository.dart';

class GetBannersUsecase {
  final HomeBaseRepository _repository;

  GetBannersUsecase(this._repository);

  Future<ApiResult<BannersEntity>> call() async {
    return await _repository.getBanners();
  }
}
