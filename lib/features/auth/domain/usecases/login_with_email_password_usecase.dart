import 'package:marketi/core/networking/api_result.dart';
import 'package:marketi/features/auth/data/models/auth_response_model.dart';
import 'package:marketi/features/auth/data/models/login_request_body.dart';
import 'package:marketi/features/auth/domain/repository/base_auth_repository.dart';

class LoginWithEmailPasswordUsecase {
  final BaseAuthRepository _repository;

  LoginWithEmailPasswordUsecase(this._repository);

  Future<ApiResult<AuthResponseModel>> call(
      LoginRequestBody loginRequestBody) async {
    return await _repository.loginWithEmailPassword(loginRequestBody);
  }
}
