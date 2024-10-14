import 'package:flutter/material.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/features/cart/presentation/logic/cart_cubit.dart';

class TotalPriceAndProductNumber extends StatelessWidget {
  const TotalPriceAndProductNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'السعر الاجمالي :  ${CartCubit.get(context).myCartTotal} جنيه',
          textAlign: TextAlign.right,
          style: AppStyles.style14SemiBold,
        ),
        Text(
          'عدد المنتجات ( ${CartCubit.get(context).cartListItems!.length} )',
          style: AppStyles.style14SemiBold,
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
