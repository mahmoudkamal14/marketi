import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/core/widgets/custom_appbar.dart';
import 'package:marketi/features/home/presentation/widgets/search_bar.dart';
import 'package:marketi/features/Favorites/ui/widgets/all_favorites_products.dart';

class FaviorteScreen extends StatelessWidget {
  const FaviorteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(title: 'Favorites'),
              const AppSearchBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'All Products',
                      textAlign: TextAlign.left,
                      style: AppStyles.style20SemiBold,
                    ),
                    verticalSpace(14),
                    const AllFavoritesProducts(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
