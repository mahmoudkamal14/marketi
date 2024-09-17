import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/features/auth/presentation/logic/login/login_cubit.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var userModel = LoginCubit.get(context).userModel;

    return Padding(
      padding: EdgeInsets.only(top: 40.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 14.w),
            child: Container(
              width: 48.w,
              height: 48.h,
              decoration: const ShapeDecoration(
                color: Color(0xFF3F80FF),
                shape: OvalBorder(),
              ),
              child: Image.asset('assets/images/Pic.png'),
            ),
          ),
          Text(userModel!.data!.name!, style: AppStyles.style20SemiBold),
          const Spacer(),
          SizedBox(
            height: 48.h,
            width: 44.w,
            child: const Icon(
              Icons.notifications_active_outlined,
              color: Color(0xff3F80FF),
              size: 36,
            ),
          ),
        ],
      ),
    );
  }
}
