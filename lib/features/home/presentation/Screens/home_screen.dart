import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/core/widgets/search_bar.dart';
import 'package:marketi/features/auth/presentation/logic/login/login_cubit.dart';
import 'package:marketi/features/auth/presentation/logic/login/login_state.dart';
import 'package:marketi/features/home/presentation/widgets/appbar_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const AppBarHome(),
                  const AppSearchBar(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14.w),
                    child: Container(
                      height: 120,
                      decoration: ShapeDecoration(
                        image: const DecorationImage(
                          image: AssetImage('assets/images/Offer_1.png'),
                          fit: BoxFit.cover,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                  ),
                  verticalSpace(4),
                  //  const ListCategoryProduct(),
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
