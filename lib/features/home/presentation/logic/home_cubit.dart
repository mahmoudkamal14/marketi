import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/features/home/data/models/banner_response_model.dart';
import 'package:marketi/features/home/data/models/categories_response_model.dart';
import 'package:marketi/features/home/data/models/product_response_model.dart';
import 'package:marketi/features/home/domain/usecases/get_all_products_usecase.dart';
import 'package:marketi/features/home/domain/usecases/get_banners_usecase.dart';
import 'package:marketi/features/home/domain/usecases/get_categories_usecase.dart';
import 'package:marketi/features/home/domain/usecases/get_category_products_usecase.dart';
import 'package:marketi/features/home/presentation/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetBannersUsecase _bannersUsecase;
  final GetCategoriesUsecase _categoriesUsecase;
  final GetAllProductsUsecase _allProductsUsecase;
  final GetCategoryProductsUsecase _categoryProductsUsecase;

  HomeCubit(
    this._bannersUsecase,
    this._categoriesUsecase,
    this._allProductsUsecase,
    this._categoryProductsUsecase,
  ) : super(const HomeState.initial());

  static HomeCubit get(context) => BlocProvider.of(context);

  List<DataBanner>? bannerList = [];
  List<CategoriesDataList>? categoriesList = [];
  List<ProductDetailsModel>? allProductsList = [];
  List<ProductDetailsModel>? categoryProductsList = [];

  void emitStatesBanners() async {
    emit(const HomeState.loading());
    final response = await _bannersUsecase.call();

    response.when(
      success: (data) {
        bannerList = data.data!;

        emit(HomeState.successGetBanner(data));
      },
      failure: (message) {
        emit(HomeState.error(message: message));
      },
    );
  }

  void emitStatesCategories() async {
    emit(const HomeState.loading());
    final response = await _categoriesUsecase.call();

    response.when(
      success: (data) {
        categoriesList = data.data!.data;

        emit(HomeState.successGetCategories(data));
      },
      failure: (message) {
        emit(HomeState.error(message: message));
      },
    );
  }

  void emitStatesAllProducts() async {
    emit(const HomeState.loading());
    final response = await _allProductsUsecase.call();

    response.when(
      success: (data) {
        allProductsList = data.data!.data;

        emit(HomeState.successGetAllProducts(data));
      },
      failure: (message) {
        emit(HomeState.error(message: message));
      },
    );
  }

  void emitStatesCategoryProducts() async {
    emit(const HomeState.loading());
    final response = await _categoryProductsUsecase.call();

    response.when(
      success: (data) {
        categoryProductsList = data.data!.data;

        emit(HomeState.successGetCategoryProduct(data));
      },
      failure: (message) {
        emit(HomeState.error(message: message));
      },
    );
  }
}
