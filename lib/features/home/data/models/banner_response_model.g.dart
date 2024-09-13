// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BannerResponseModel _$BannerResponseModelFromJson(Map<String, dynamic> json) =>
    BannerResponseModel(
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$BannerResponseModelToJson(
        BannerResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
    };
