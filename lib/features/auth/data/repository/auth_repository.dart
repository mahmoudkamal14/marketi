import 'package:marketi/core/networking/api_result.dart';
import 'package:marketi/features/auth/data/datasource/remote_auth_datasource.dart';
import 'package:marketi/features/auth/data/models/auth_response_model.dart';
import 'package:marketi/features/auth/data/models/login_request_body.dart';
import 'package:marketi/features/auth/data/models/register_request_body.dart';
import 'package:marketi/features/auth/domain/repository/base_auth_repository.dart';

class AuthRepository extends BaseAuthRepository {
  final RemoteAuthDatasource _datasource;

  AuthRepository(this._datasource);

  @override
  Future<ApiResult<AuthResponseModel>> loginWithEmailPassword(
      LoginRequestBody loginRequestBody) async {
    try {
      final result = await _datasource.loginWithEmailPassword(loginRequestBody);

      print('User Name => ${result.data!.name}');

      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }

  @override
  Future<ApiResult<AuthResponseModel>> registerWithEmailPassword(
      RegisterRequestBody registerRequestBody) async {
    final result =
        await _datasource.registerWithEmailPassword(registerRequestBody);
    try {
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }
}
