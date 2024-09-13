import 'package:marketi/core/networking/api_result.dart';
import 'package:marketi/features/auth/domain/entities/register_entity.dart';
import 'package:marketi/features/auth/domain/entities/user_entity.dart';
import 'package:marketi/features/auth/domain/repository/base_auth_repository.dart';

class RegisterWithEmailPasswordUsecase {
  final BaseAuthRepository _repository;

  RegisterWithEmailPasswordUsecase(this._repository);

  Future<ApiResult<UserEntity>> call(RegisterEntity registerEntity) async {
    return await _repository.registerWithEmailPassword(registerEntity);
  }
}
