import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketi/features/home/data/models/banner_response_model.dart';
import 'package:marketi/features/home/data/models/categories_response_model.dart';
import 'package:marketi/features/home/data/models/product_response_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // Banners

  const factory HomeState.getBannerLoading() = GetBannerLoading;

  const factory HomeState.getBannerSuccess(List<DataBanner>? bannerList) =
      GetBannerSuccess;

  const factory HomeState.getBannerError({required String message}) =
      GetBannerError;

  // Categories

  const factory HomeState.getCategoriesLoading() = GetCategoriesLoading;

  const factory HomeState.getCategoriesSuccess(
      List<CategoriesDataList>? categoriesDataList) = GetCategoriesSuccess;

  const factory HomeState.getCategoriesError({required String message}) =
      GetCategoriesError;

  // All Products

  const factory HomeState.getAllProductsLoading() = GetAllProductsLoading;

  const factory HomeState.getAllProductsSuccess(
      List<ProductDetailsModel>? allProductsList) = GetAllProductsSuccess;

  const factory HomeState.getAllProductsError({required String message}) =
      GetAllProductsError;

  // Category Product

  const factory HomeState.getCategoryProductLoading() =
      GetCategoryProductLoading;

  const factory HomeState.getCategoryProductSuccess(
          List<ProductDetailsModel>? categoryProductList) =
      GetCategoryProductSuccess;

  const factory HomeState.getCategoryProductError({required String message}) =
      GetCategoryProductError;
}
