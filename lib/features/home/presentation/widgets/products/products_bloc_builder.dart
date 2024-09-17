import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/features/home/data/models/product_response_model.dart';
import 'package:marketi/features/home/presentation/logic/home_cubit.dart';
import 'package:marketi/features/home/presentation/logic/home_state.dart';
import 'package:marketi/features/home/presentation/widgets/products/all_products_grid_view.dart';
import 'package:marketi/features/home/presentation/widgets/products/shimmer_loading_grid_view.dart';

class ProductsBlocBuilder extends StatelessWidget {
  const ProductsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is GetAllProductsLoading ||
          current is GetAllProductsSuccess ||
          current is GetAllProductsError,
      builder: (context, state) {
        return state.maybeWhen(
          //     getAllProductsLoading: () => setupLoading(),
          getAllProductsSuccess: (allProductList) {
            return setupSuccess(allProductList);
          },
          getAllProductsError: (message) => const SizedBox.shrink(),
          orElse: () {
            if (HomeCubit.get(context).allProductsList!.isNotEmpty) {
              return setupSuccess(HomeCubit.get(context).allProductsList);
            } else {
              return const SizedBox.shrink();
            }
          },
        );
      },
    );
  }

  setupLoading() {
    return const ShimmerLoadingGridView();
  }

  setupSuccess(List<ProductDetailsModel>? allProductList) {
    return AllProductsGridView(allProductList: allProductList);
  }
}
