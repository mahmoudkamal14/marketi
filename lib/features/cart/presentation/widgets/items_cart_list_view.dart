import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/features/cart/data/models/item_product_cart_model.dart';
import 'package:marketi/features/cart/presentation/widgets/item_product_cart.dart';

class ItemsCartListView extends StatelessWidget {
  ItemsCartListView({super.key});

  final List<ItemProductCartModel> items = listItemsProductCart;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemCount: items.length,
          separatorBuilder: (context, index) => verticalSpace(7),
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w),
            child: ItemProductCart(model: items[index]),
          ),
        ),
      ),
    );
  }
}
