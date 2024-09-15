import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/features/home/presentation/widgets/item_of_category.dart';

class ListCategoryProduct extends StatelessWidget {
  const ListCategoryProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Category', style: AppStyles.style20SemiBold),
              Text('View all', style: AppStyles.style16SemiBold),
            ],
          ),
          verticalSpace(10),
          SizedBox(
            height: 200.h,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, index) => const ItemCategoryProduct(),
            ),
          ),
        ],
      ),
    );
  }
}
