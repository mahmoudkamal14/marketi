import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/features/home/data/models/banner_response_model.dart';
import 'package:marketi/features/home/presentation/logic/home_cubit.dart';
import 'package:marketi/features/home/presentation/logic/home_state.dart';
import 'package:marketi/features/home/presentation/widgets/banners/banners_list_view.dart';

class BannerBlocBuilder extends StatelessWidget {
  const BannerBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is GetBannerLoading ||
          current is GetBannerSuccess ||
          current is GetBannerError,
      builder: (context, state) {
        return state.maybeWhen(
          getBannerSuccess: (bannersList) {
            return setupSuccess(bannersList);
          },
          getBannerError: (message) => const SizedBox.shrink(),
          orElse: () {
            if (HomeCubit.get(context).bannerList!.isNotEmpty) {
              return setupSuccess(HomeCubit.get(context).bannerList);
            } else {
              return const SizedBox.shrink();
            }
          },
        );
      },
    );
  }

  BannersListView setupSuccess(List<DataBanner>? bannersList) {
    return BannersListView(bannersList: bannersList);
  }
}
