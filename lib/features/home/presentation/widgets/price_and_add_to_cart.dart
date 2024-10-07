import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/features/cart/data/models/item_product_cart_model.dart';

class PriceAndAddToCart extends StatelessWidget {
  const PriceAndAddToCart({
    super.key,
    required this.model,
  });

  final ItemProductCartModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Price\n${model.price} EGP',
          textAlign: TextAlign.center,
          style: AppStyles.style18Medium.copyWith(
            color: const Color(0xFF001640),
          ),
        ),
        horizontalSpace(8),
        Expanded(
          child: AddToCard(
            text: 'Add to Cart',
            onTap: () {},
          ),
        ),
      ],
    );
  }
}

class AddToCard extends StatelessWidget {
  const AddToCard({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1.w, color: const Color(0xFF3F80FF)),
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(IconlyBold.buy, color: Color(0xFF3F80FF)),
            horizontalSpace(8),
            Text(
              text,
              style: AppStyles.style14Medium.copyWith(
                color: const Color(0xFF3F80FF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
