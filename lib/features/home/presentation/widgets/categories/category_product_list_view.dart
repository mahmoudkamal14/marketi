import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/features/home/presentation/Screens/category_products_screen.dart';
import 'package:marketi/features/home/presentation/logic/home_cubit.dart';
import 'package:marketi/features/home/presentation/logic/home_state.dart';

class CategoryProductListView extends StatelessWidget {
  const CategoryProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.maybeWhen(
          getCategoryProductSuccess: (categoryProductList) {
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
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
