import 'package:marketi/core/networking/api_result.dart';
import 'package:marketi/features/home/data/models/categories_response_model.dart';
import 'package:marketi/features/home/domain/repository/base_home_repository.dart';

class GetCategoriesUsecase {
  final BaseHomeRepository _repository;

  GetCategoriesUsecase(this._repository);

  Future<ApiResult<CategoriesResponseModel>> call() async {
    return await _repository.getCategories();
  }
}
