import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketi/features/auth/domain/entities/user_entity.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.error({required String message}) = Error;
  const factory LoginState.loginSuccess(UserEntity userEntity) = LoginSuccess;
}
