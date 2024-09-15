import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/core/widgets/search_bar.dart';
import 'package:marketi/features/home/presentation/logic/home_cubit.dart';
import 'package:marketi/features/home/presentation/logic/home_state.dart';
import 'package:marketi/features/home/presentation/widgets/all_products_grid_view.dart';
import 'package:marketi/features/home/presentation/widgets/appbar_home.dart';
import 'package:marketi/features/home/presentation/widgets/banners_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const AppBarHome(),
                  const AppSearchBar(),
                  const BannersListView(),
                  verticalSpace(30),
                  const AllProductsGridView(),
                  verticalSpace(4),
                  // Padding(
                  //   padding: EdgeInsets.symmetric(horizontal: 14.w),
                  //   child: const AllProductsGridView(),
                  // ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
