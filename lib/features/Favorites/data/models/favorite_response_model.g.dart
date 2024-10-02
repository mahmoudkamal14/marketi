// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavoriteResponseModel _$FavoriteResponseModelFromJson(
        Map<String, dynamic> json) =>
    FavoriteResponseModel(
      status: json['status'] as bool,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      currentPage: (json['current_page'] as num).toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: (json['id'] as num).toInt(),
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
    );

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: (json['id'] as num).toInt(),
      price: (json['price'] as num).toInt(),
      oldPrice: (json['old_price'] as num).toInt(),
      discount: (json['discount'] as num).toInt(),
      image: json['image'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
    );
