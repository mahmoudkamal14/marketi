import 'package:marketi/core/networking/api_result.dart';
import 'package:marketi/features/auth/data/models/auth_response_model.dart';
import 'package:marketi/features/auth/data/models/register_request_body.dart';
import 'package:marketi/features/auth/domain/repository/base_auth_repository.dart';

class RegisterWithEmailPasswordUsecase {
  final BaseAuthRepository _repository;

  RegisterWithEmailPasswordUsecase(this._repository);

  Future<ApiResult<AuthResponseModel>> call(
      RegisterRequestBody registerRequestBody) async {
    return await _repository.registerWithEmailPassword(registerRequestBody);
  }
}
