import 'package:marketi/core/networking/api_result.dart';
import 'package:marketi/features/home/data/models/banner_response_model.dart';
import 'package:marketi/features/home/data/models/categories_response_model.dart';
import 'package:marketi/features/home/data/models/product_response_model.dart';

abstract class BaseHomeRepository {
  Future<ApiResult<BannerResponseModel>> getBanners();
  Future<ApiResult<CategoriesResponseModel>> getCategories();
  Future<ApiResult<ProductResponseModel>> getCategoryProducts();
  Future<ApiResult<ProductResponseModel>> getAllProducts();
}
