import 'package:flutter/material.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/features/cart/data/models/item_product_cart_model.dart';

class NameAndLikeProduct extends StatelessWidget {
  const NameAndLikeProduct({
    super.key,
    required this.model,
  });

  final ItemProductCartModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Pampers Swaddlers',
          style: AppStyles.style14Medium,
        ),
        GestureDetector(
          onTap: () {},
          child: Icon(model.fav ? Icons.favorite : Icons.favorite_border),
        ),
      ],
    );
  }
}
