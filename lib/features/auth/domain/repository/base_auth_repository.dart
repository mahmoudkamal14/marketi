import 'package:marketi/core/networking/api_result.dart';
import 'package:marketi/features/auth/domain/entities/login_entity.dart';
import 'package:marketi/features/auth/domain/entities/register_entity.dart';
import 'package:marketi/features/auth/domain/entities/user_entity.dart';

abstract class BaseAuthRepository {
  Future<ApiResult<UserEntity>> loginWithEmailPassword(LoginEntity loginEntity);

  Future<ApiResult<UserEntity>> registerWithEmailPassword(
      RegisterEntity registerEntity);
}
