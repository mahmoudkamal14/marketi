import 'package:json_annotation/json_annotation.dart';
import 'package:marketi/features/auth/domain/entities/user_entity.dart';

part 'auth_response_model.g.dart';

@JsonSerializable()
class AuthResponseModel extends UserEntity {
  AuthResponseModel({
    required super.id,
    required super.name,
    required super.email,
    required super.phone,
    required super.image,
    required super.points,
    required super.credit,
    required super.token,
  });

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseModelFromJson(json);
}
