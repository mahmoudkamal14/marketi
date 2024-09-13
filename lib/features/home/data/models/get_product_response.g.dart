// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) =>
    ProductResponse(
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      photo: json['photo'] as String,
      rate: (json['rate'] as num).toDouble(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$ProductResponseToJson(ProductResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'photo': instance.photo,
      'rate': instance.rate,
      'description': instance.description,
    };
