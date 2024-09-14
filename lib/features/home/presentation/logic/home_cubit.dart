import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/features/home/data/models/banner_response_model.dart';
import 'package:marketi/features/home/domain/usecases/get_banners_usecase.dart';
import 'package:marketi/features/home/presentation/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final GetBannersUsecase _bannersUsecase;
  HomeCubit(this._bannersUsecase) : super(const HomeState.initial());

  static HomeCubit get(context) => BlocProvider.of(context);

  List<DataBanner>? bannerList = [];

  void emitStatesBanners() async {
    final response = await _bannersUsecase.call();

    response.when(
      success: (data) {
        bannerList = data.data!;
        print(data);

        emit(HomeState.successGetBanner(data));
      },
      failure: (message) {
        emit(HomeState.error(message: message));
      },
    );
  }
}
