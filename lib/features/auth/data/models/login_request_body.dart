import 'package:json_annotation/json_annotation.dart';
import 'package:marketi/features/auth/domain/entities/login_entity.dart';

part 'login_request_body.g.dart';

@JsonSerializable()
class LoginRequestBody extends LoginEntity {
  LoginRequestBody({required super.email, required super.password});

  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);

  factory LoginRequestBody.fromEntity(LoginEntity entity) =>
      LoginRequestBody(email: entity.email, password: entity.password);
}
