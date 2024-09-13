import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/features/Favorites/ui/widgets/item_favorite_product.dart';

class AllFavoritesProducts extends StatelessWidget {
  const AllFavoritesProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700.h,
      width: double.infinity,
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 12,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 164.w / 194.h,
          crossAxisSpacing: 19.w,
          mainAxisSpacing: 15.w,
        ),
        itemBuilder: (context, index) => const ItemFavoriteProduct(),
        primary: true,
        shrinkWrap: true,
      ),
    );
  }
}
