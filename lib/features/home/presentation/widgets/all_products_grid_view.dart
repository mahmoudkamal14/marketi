import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/features/home/presentation/widgets/item_of_category.dart';

class AllProductsGridView extends StatelessWidget {
  const AllProductsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'All Products',
            textAlign: TextAlign.left,
            style: AppStyles.style20SemiBold,
          ),
          verticalSpace(4),
          SizedBox(
            height: 888.h,
            width: double.infinity,
            child: GridView.builder(
              reverse: true,
              shrinkWrap: true,
              itemCount: 20,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 164.w / 194.h,
                crossAxisSpacing: 19.w,
                mainAxisSpacing: 15.w,
              ),
              itemBuilder: (context, index) => const ItemCategoryProduct(),
            ),
          ),
        ],
      ),
    );
  }
}
