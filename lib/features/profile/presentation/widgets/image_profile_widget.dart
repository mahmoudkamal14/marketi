import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/features/auth/presentation/logic/login/login_cubit.dart';

class ImageProfileWidget extends StatelessWidget {
  const ImageProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 309.w,
      height: 216.h,
      decoration: ShapeDecoration(
        shape: OvalBorder(
          side: BorderSide(
            width: 1.50.w,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: const Color(0xFFD9E6FF),
          ),
        ),
        image: const DecorationImage(
          image: AssetImage('assets/images/Shapes.png'),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(image: AssetImage('assets/images/Pic.png')),
          verticalSpace(8),
          Text(
            '${LoginCubit.get(context).userModel!.data!.name}',
            style: AppStyles.style18SemiBold,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
