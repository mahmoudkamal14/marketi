import 'package:json_annotation/json_annotation.dart';

part 'get_product_response.g.dart';

@JsonSerializable()
class ProductResponse {
  final String name;
  final double price;
  final String photo;
  final double rate;
  final String description;

  ProductResponse({
    required this.name,
    required this.price,
    required this.photo,
    required this.rate,
    required this.description,
  });

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductResponseToJson(this);
}
