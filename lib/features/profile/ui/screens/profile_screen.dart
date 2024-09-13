import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/features/profile/ui/widgets/app_bar_profile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            const AppBarProfile(),
            Container(
              width: 309.w,
              height: 216.h,
              decoration: const ShapeDecoration(
                shape: OvalBorder(
                  side: BorderSide(
                    width: 1.50,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Color(0xFFD9E6FF),
                  ),
                ),
                image: DecorationImage(
                    image: AssetImage('assets/images/Shapes.png')),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(image: AssetImage('assets/images/Pic.png')),
                  verticalSpace(8),
                  Text('Khaled Mohamed', style: AppStyles.style18SemiBold),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
