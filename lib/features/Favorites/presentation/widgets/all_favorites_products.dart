import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/features/Favorites/presentation/widgets/item_favorite_product.dart';

class AllFavoritesProducts extends StatelessWidget {
  const AllFavoritesProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 700.h,
      width: double.infinity,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 1,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(bottom: 12.0),
          child: ItemFavoriteProduct(),
        ),
        primary: true,
      ),
    );
  }
}
