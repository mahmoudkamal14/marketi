import 'package:marketi/core/networking/api_result.dart';
import 'package:marketi/features/auth/data/datasource/remote_auth_datasource.dart';
import 'package:marketi/features/auth/data/models/login_request_body.dart';
import 'package:marketi/features/auth/data/models/register_request_body.dart';
import 'package:marketi/features/auth/domain/entities/login_entity.dart';
import 'package:marketi/features/auth/domain/entities/register_entity.dart';
import 'package:marketi/features/auth/domain/entities/user_entity.dart';
import 'package:marketi/features/auth/domain/repository/base_auth_repository.dart';

class AuthRepository extends BaseAuthRepository {
  final RemoteAuthDatasource _datasource;

  AuthRepository(this._datasource);

  @override
  Future<ApiResult<UserEntity>> loginWithEmailPassword(
      LoginEntity loginEntity) async {
    try {
      final result = await _datasource.loginWithEmailPassword(
        LoginRequestBody(
          email: loginEntity.email,
          password: loginEntity.password,
        ),
      );

      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }

  @override
  Future<ApiResult<UserEntity>> registerWithEmailPassword(
      RegisterEntity registerEntity) async {
    final result = await _datasource
        .registerWithEmailPassword(registerEntity as RegisterRequestBody);
    try {
      return ApiResult.success(result);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }
}
