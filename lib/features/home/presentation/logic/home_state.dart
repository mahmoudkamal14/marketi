import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketi/features/home/data/models/banner_response_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.loading() = Loading;
  const factory HomeState.error({required String message}) = Error;
  const factory HomeState.successGetBanner(BannerResponseModel? bannerSList) =
      SuccessGetBanner;
}
