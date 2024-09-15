import 'package:marketi/core/networking/api_result.dart';
import 'package:marketi/features/auth/data/models/auth_response_model.dart';
import 'package:marketi/features/auth/data/models/login_request_body.dart';
import 'package:marketi/features/auth/data/models/register_request_body.dart';

abstract class BaseAuthRepository {
  Future<ApiResult<AuthResponseModel>> loginWithEmailPassword(
      LoginRequestBody loginRequestBody);

  Future<ApiResult<AuthResponseModel>> registerWithEmailPassword(
      RegisterRequestBody registerRequestBody);
}
