// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:marketi/features/home/data/models/product_response_model.dart';
// import 'package:marketi/features/home/presentation/logic/home_cubit.dart';
// import 'package:marketi/features/home/presentation/logic/home_state.dart';

// import 'category_product_list_view.dart';

// class CategoryProductBlocBuilder extends StatelessWidget {
//   const CategoryProductBlocBuilder({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<HomeCubit, HomeState>(
//       buildWhen: (previous, current) =>
//           current is GetCategoryProductLoading ||
//           current is GetCategoryProductSuccess ||
//           current is SearchForProductError,
//       builder: (context, state) {
//         return state.maybeWhen(
//           getCategoryProductSuccess: (categoryProductList) {
//             return setupSuccess(categoryProductList);
//           },
//           getCategoryProductError: (message) => const SizedBox.shrink(),
//           orElse: () {
//             return setupSuccess(HomeCubit.get(context).categoryProductsList);
//           },
//         );
//       },
//     );
//   }

//   setupSuccess(List<ProductDetailsModel>? categoryProductList) {
//     return CategoryProductListView(
//       categoryProductList: categoryProductList,
//     );
//   }
// }
