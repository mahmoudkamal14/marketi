import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/core/widgets/custom_appbar.dart';
import 'package:marketi/features/cart/data/models/item_product_cart_model.dart';
import 'package:marketi/features/home/presentation/widgets/animated_image_product.dart';
import 'package:marketi/features/home/presentation/widgets/price_and_add_to_cart.dart';
import 'package:marketi/features/home/presentation/widgets/rating_starts.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.model});

  final ItemProductCartModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomAppBar(
              title: 'Product Details',
              pop: '',
            ),
            verticalSpace(14),
            AnimatedImageProduct(model: model),
            Expanded(
              child: Container(
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  color: Color(0xFFF4FAFF),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x7FB2CCFF),
                      blurRadius: 10,
                      offset: Offset(0, -1),
                      spreadRadius: 0,
                    )
                  ],
                ),
                padding: const EdgeInsetsDirectional.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 142.w,
                          height: 19.h,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1.w,
                                strokeAlign: BorderSide.strokeAlignOutside,
                                color: const Color(0xFF3F80FF),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            'Free Shopping',
                            textAlign: TextAlign.center,
                            style: AppStyles.style14Medium.copyWith(
                              color: const Color(0xFF3F80FF),
                            ),
                          ),
                        ),
                        RatingStarts(model: model)
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.h),
                      child: Text(
                        model.name,
                        style: AppStyles.style20Medium.copyWith(
                          color: const Color(0xFF001640),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Product Value',
                          style: AppStyles.style18Medium.copyWith(
                            color: const Color(0xFF001640),
                          ),
                        ),
                        verticalSpace(8),
                        Text(
                          model.description,
                          style: AppStyles.style16Regular.copyWith(
                            color: const Color(0xff001640),
                          ),
                        ),
                      ],
                    ),
                    verticalSpace(16),
                    PriceAndAddToCart(model: model),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
