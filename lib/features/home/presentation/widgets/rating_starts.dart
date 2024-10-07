import 'package:flutter/material.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/features/cart/data/models/item_product_cart_model.dart';

class RatingStarts extends StatelessWidget {
  const RatingStarts({
    super.key,
    required this.model,
  });

  final ItemProductCartModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 1; i <= model.rate.toInt(); i++)
          const Icon(
            Icons.star,
            color: Colors.yellow,
          ),
        for (int i = model.rate.toInt(); i < 5; i++)
          const Icon(
            Icons.star_border_purple500_outlined,
          ),
        horizontalSpace(8),
        Text(
          ''
          '(${model.rate})',
          style: AppStyles.style12Medium,
        ),
      ],
    );
  }
}
