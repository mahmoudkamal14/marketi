import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/features/auth/data/models/auth_response_model.dart';
import 'package:marketi/features/profile/presentation/logic/profile_cubit.dart';
import 'package:marketi/features/profile/presentation/logic/profile_state.dart';
import 'package:shimmer/shimmer.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      builder: (context, state) {
        var userModel = ProfileCubit.get(context).userModel;

        switch (state) {
          case GetProfileLoadingState _:
            return setupLoading();
          case GetProfileSuccessState _:
            return setupSuccess(userModel);
          case GetProfileErrorState _:
            return setupLoading();
          default:
            return setupSuccess(userModel);
        }
      },
    );
  }

  Shimmer setupLoading() {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30.0),
        child: Row(
          children: [
            const CircleAvatar(radius: 30, backgroundColor: Colors.white),
            const SizedBox(width: 10),
            Expanded(
              child: Container(
                height: 40,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding setupSuccess(AuthResponseModel? userModel) {
    return Padding(
      padding: EdgeInsets.only(top: 40.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 14.w),
            child: const CircleAvatar(
              radius: 32,
              backgroundImage: AssetImage('assets/images/my photo.jpg'),
            ),
          ),
          Text(userModel!.data!.name!, style: AppStyles.style20SemiBold),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: SizedBox(
              height: 48.h,
              width: 44.w,
              child: const Icon(
                Icons.notifications_active_outlined,
                color: Color(0xff3F80FF),
                size: 36,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
