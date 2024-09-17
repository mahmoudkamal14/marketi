import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/core/widgets/icon_navigate_pop.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.image,
    required this.pop,
  });

  final String title;
  final String? image;
  final String pop;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const IconNavigatePop(),
          Text(title, style: AppStyles.style20SemiBold),
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: Container(
              width: 48.w,
              height: 48.h,
              decoration: const ShapeDecoration(
                color: Color(0xFF3F80FF),
                shape: OvalBorder(),
              ),
              child: Image.asset(image ?? 'assets/images/Pic.png'),
            ),
          ),
        ],
      ),
    );
  }
}
