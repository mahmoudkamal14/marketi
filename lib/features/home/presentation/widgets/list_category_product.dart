import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/features/home/presentation/widgets/item_of_category.dart';

class ListCategoryProduct extends StatelessWidget {
  const ListCategoryProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.h,
      width: double.infinity,
      child: Expanded(
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 2,
          itemBuilder: (context, index) => const ItemCategoryProduct(),
          separatorBuilder: (context, index) => horizontalSpace(4),
        ),
      ),
    );
  }
}
