import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/features/home/data/models/banner_response_model.dart';
import 'package:marketi/features/home/data/models/categories_response_model.dart';
import 'package:marketi/features/home/data/models/product_response_model.dart';
import 'package:marketi/features/home/data/repository/home_repository.dart';
import 'package:marketi/features/home/presentation/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepository _homeRepository;

  HomeCubit(this._homeRepository) : super(const HomeState.initial());

  static HomeCubit get(context) => BlocProvider.of(context);

  List<DataBanner>? bannerList = [];
  List<CategoriesDataList>? categoriesList = [];
  List<ProductDetailsModel>? allProductsList = [];
  List<ProductDetailsModel>? searchList = [];

  void emitStatesBanners() async {
    emit(const HomeState.getBannerLoading());
    final response = await _homeRepository.getBanners();

    response.when(
      success: (data) {
        bannerList = data.data!;

        emit(HomeState.getBannerSuccess(bannerList));
      },
      failure: (message) {
        emit(HomeState.getBannerError(message: message));
      },
    );
  }

  void emitStatesCategories() async {
    emit(const HomeState.getCategoriesLoading());
    final response = await _homeRepository.getCategories();

    response.when(
      success: (data) {
        categoriesList = data.data!.data;

        emit(HomeState.getCategoriesSuccess(categoriesList));
      },
      failure: (message) {
        emit(HomeState.getCategoriesError(message: message));
      },
    );
  }

  void emitStatesAllProducts() async {
    emit(const HomeState.getAllProductsLoading());
    final response = await _homeRepository.getAllProducts();

    response.when(
      success: (data) {
        allProductsList = data.data!.data;
        emit(HomeState.getAllProductsSuccess(allProductsList));
      },
      failure: (message) {
        emit(HomeState.getAllProductsError(message: message));
      },
    );
  }

  void emitSearchStates(String text) async {
    emit(const HomeState.searchForProductLoading());
    final response = await _homeRepository.searchForProduct(text);

    response.when(
      success: (data) {
        searchList = data.data!.data;

        emit(HomeState.searchForProductSuccess(searchList));
      },
      failure: (message) {
        emit(HomeState.searchForProductError(message: message));
      },
    );
  }

  List<ProductDetailsModel>? categoryProductsList = [];

  void emitStatesCategoryProducts(int id) async {
    emit(const HomeState.getCategoryProductLoading());
    final response = await _homeRepository.getCategoryById(id);

    response.when(
      success: (data) {
        categoryProductsList = data.data!.data;

        emit(HomeState.getCategoryProductSuccess(categoryProductsList));
      },
      failure: (message) {
        emit(HomeState.getCategoryProductError(message: message));
      },
    );
  }
}
