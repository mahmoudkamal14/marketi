import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/features/home/presentation/widgets/price_and_add_to_cart.dart';

class ItemCategoryProduct extends StatelessWidget {
  const ItemCategoryProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(context,
        //     MaterialPageRoute(builder: (_) => ProductDetails(model: model)));
      },
      child: Container(
        decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 6.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: ShapeDecoration(
                    color: const Color(0xFFD9E6FF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset('assets/images/product.png'),
                    Positioned(
                      right: 4.w,
                      top: 4.h,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        clipBehavior: Clip.none,
                        decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13))),
                        child: GestureDetector(
                          onTap: () {},
                          child: const Icon(Icons.favorite, color: Colors.red),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('799 LE', style: AppStyles.style12Medium),
                    Row(
                      children: [
                        const Icon(Icons.star_border),
                        Text(
                          '4.9',
                          textAlign: TextAlign.center,
                          style: AppStyles.style12Medium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              verticalSpace(4),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child:
                    Text('Black JBL Airbods', style: AppStyles.style14Medium),
              ),
              verticalSpace(8),
              AddToCard(
                text: 'Add',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
