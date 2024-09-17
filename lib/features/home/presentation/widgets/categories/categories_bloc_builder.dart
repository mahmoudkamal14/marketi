import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/features/home/data/models/categories_response_model.dart';
import 'package:marketi/features/home/presentation/logic/home_cubit.dart';
import 'package:marketi/features/home/presentation/logic/home_state.dart';
import 'package:marketi/features/home/presentation/widgets/categories/categories_list_view.dart';

class CategoriesBlocBuilder extends StatelessWidget {
  const CategoriesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is GetCategoriesLoading ||
          current is GetCategoriesSuccess ||
          current is GetCategoriesError,
      builder: (context, state) {
        return state.maybeWhen(
          //   getCategoriesLoading: () => const CategoriesShimmerLoading(),
          getCategoriesSuccess: (categoriesList) {
            return setupSuccess(categoriesList);
          },
          getCategoriesError: (message) => const SizedBox.shrink(),
          orElse: () {
            if (HomeCubit.get(context).categoriesList!.isNotEmpty) {
              return setupSuccess(HomeCubit.get(context).categoriesList);
            } else {
              return const SizedBox.shrink();
            }
          },
        );
      },
    );
  }

  CategoriesListView setupSuccess(List<CategoriesDataList>? categoriesList) {
    return CategoriesListView(
      categoriesList: categoriesList,
    );
  }
}
