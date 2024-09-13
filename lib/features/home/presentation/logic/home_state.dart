import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketi/features/home/domain/entities/banners_entity.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.loading() = Loading;
  const factory HomeState.error({required String message}) = Error;
  const factory HomeState.successGetBanner(List<BannersEntity> bannerSList) =
      SuccessGetBanner;
}
