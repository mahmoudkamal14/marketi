import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/routes/extentions.dart';
import 'package:marketi/core/routes/routes.dart';

class IconNavigatePop extends StatelessWidget {
  const IconNavigatePop({
    super.key,
    required this.pop,
  });

  final String pop;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14),
      child: Container(
        width: 48.w,
        height: 48.h,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xB2B2CCFF)),
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        child: IconButton(
          onPressed: () {
            pop == 'home'
                ? context.navigateToReplacement(Routes.navBarLayout)
                : context.pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
    );
  }
}
