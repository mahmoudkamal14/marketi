import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/core/widgets/icon_navigate_pop.dart';

class AppBarProfile extends StatelessWidget {
  const AppBarProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40.h, bottom: 30.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const IconNavigatePop(
            pop: 'home',
          ),
          Text('My Profile', style: AppStyles.style20SemiBold),
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: GestureDetector(
                child: Container(
                    width: 48.w,
                    height: 48.h,
                    decoration: const ShapeDecoration(
                      shape: OvalBorder(),
                    ),
                    child: Image.asset(
                      'assets/images/Cart_Icon_UIA.png',
                    ))),
          ),
        ],
      ),
    );
  }
}
