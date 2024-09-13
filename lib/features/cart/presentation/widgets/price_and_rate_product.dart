import 'package:flutter/material.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/features/cart/data/models/item_product_cart_model.dart';

class PriceAndRateProduct extends StatelessWidget {
  const PriceAndRateProduct({
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
          'Price: ${model.price * model.count!} EGP',
          style: AppStyles.style14Medium,
        ),
        Row(
          children: [
            const Icon(Icons.star_border),
            Text(
              model.rate.toString(),
              textAlign: TextAlign.center,
              style: AppStyles.style12Medium,
            ),
          ],
        ),
      ],
    );
  }
}
