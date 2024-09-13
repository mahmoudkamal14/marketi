import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/core/widgets/app_text_button.dart';
import 'package:marketi/core/widgets/custom_appbar.dart';
import 'package:marketi/features/cart/data/models/item_product_cart_model.dart';
import 'package:marketi/features/cart/presentation/widgets/cart_empty.dart';
import 'package:marketi/features/cart/presentation/widgets/items_cart_list_view.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return (listItemsProductCart.isNotEmpty)
        ? SafeArea(
            child: Scaffold(
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomAppBar(
                    title: 'Cart',
                    pop: 'home',
                  ),
                  verticalSpace(14),
                  Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.w, vertical: 14.h),
                      child: Text(
                        'Products in Cart',
                        style: AppStyles.style20SemiBold,
                      )),
                  ItemsCartListView(),
                  verticalSpace(14),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14.w),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Suptotal (${listItemsProductCart.length} items)',
                              style: AppStyles.style14SemiBold,
                              textAlign: TextAlign.left,
                            ),
                            Text(
                              'EGP 1,120,00',
                              textAlign: TextAlign.right,
                              style: AppStyles.style14SemiBold,
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 14.h),
                          child: AppTextButton(
                            textButton: 'Checkout',
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : const CartEmpty();
  }
}
