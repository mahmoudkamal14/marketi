import 'package:json_annotation/json_annotation.dart';
import 'package:marketi/features/auth/domain/entities/register_entity.dart';

part 'register_request_body.g.dart';

@JsonSerializable()
class RegisterRequestBody extends RegisterEntity {
  RegisterRequestBody({
    required super.name,
    required super.phone,
    required super.email,
    required super.password,
    required super.image,
  });

  Map<String, dynamic> toJson() => _$RegisterRequestBodyToJson(this);

  factory RegisterRequestBody.fromEntity(RegisterEntity entity) =>
      RegisterRequestBody(
        name: entity.name,
        phone: entity.phone,
        email: entity.email,
        password: entity.password,
        image: entity.image,
      );
}
