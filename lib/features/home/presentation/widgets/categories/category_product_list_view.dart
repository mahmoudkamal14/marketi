import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/features/home/presentation/logic/home_cubit.dart';

import 'category_product_list_view_item.dart';

class CategoryProductListView extends StatelessWidget {
  const CategoryProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    var categoryProductList = HomeCubit.get(context).categoryProductsList;
    return Expanded(
      child: ListView.builder(
        itemCount: categoryProductList!.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(bottom: 12.h),
          child: CategoryProductListViewItem(
            model: categoryProductList[index],
          ),
        ),
      ),
    );
  }
}
