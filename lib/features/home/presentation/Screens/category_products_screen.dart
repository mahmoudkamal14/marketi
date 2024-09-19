import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/core/widgets/icon_navigate_pop.dart';
import 'package:marketi/features/home/presentation/widgets/categories/category_product_list_view.dart';

class CategoryProductsScreen extends StatelessWidget {
  const CategoryProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 30.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const IconNavigatePop(),
                    Text(
                      'أجهزة كهربية',
                      style: AppStyles.style20Medium,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(
                        'assets/images/Cart_Icon_UIA.png',
                        height: 30,
                        width: 60,
                      ),
                    ),
                  ],
                ),
                verticalSpace(8),
                const CategoryProductListView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
