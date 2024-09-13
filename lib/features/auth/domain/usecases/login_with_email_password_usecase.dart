import 'package:marketi/core/networking/api_result.dart';
import 'package:marketi/features/auth/domain/entities/login_entity.dart';
import 'package:marketi/features/auth/domain/entities/user_entity.dart';
import 'package:marketi/features/auth/domain/repository/base_auth_repository.dart';

class LoginWithEmailPasswordUsecase {
  final BaseAuthRepository _repository;

  LoginWithEmailPasswordUsecase(this._repository);

  Future<ApiResult<UserEntity>> call(LoginEntity loginEntity) async {
    return await _repository.loginWithEmailPassword(loginEntity);
  }
}
