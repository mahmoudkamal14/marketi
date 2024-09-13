import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/theme/app_styles.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40.h, right: 14.w, left: 14.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 14.w),
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
          Text('HI Khaled', style: AppStyles.style20SemiBold),
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
