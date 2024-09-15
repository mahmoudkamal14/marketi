import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketi/features/auth/data/models/auth_response_model.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.loading() = Loading;
  const factory RegisterState.error({required String message}) = Error;
  const factory RegisterState.registerSuccess(AuthResponseModel userEntity) =
      RegisterSuccess;
}
