import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketi/features/home/domain/entities/banners_entity.dart';

part 'banner_response_model.g.dart';

@JsonSerializable()
class BannerResponseModel extends BannersEntity {
  BannerResponseModel({required super.id, required super.image});

  factory BannerResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BannerResponseModelFromJson(json);
}
