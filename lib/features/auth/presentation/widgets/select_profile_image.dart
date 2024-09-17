import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectProfileImage extends StatelessWidget {
  const SelectProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CircleAvatar(
            radius: 90.r,
            backgroundColor: const Color(0xB2B2CCFF),
            child: const CircleAvatar(
              radius: 85,
              backgroundImage: AssetImage('assets/images/Pic.png'),
            ),
          ),
          IconButton(
            onPressed: () {
              showBottomSheet(
                context: context,
                sheetAnimationStyle: AnimationStyle(
                  curve: Curves.elasticOut,
                  duration: const Duration(milliseconds: 800),
                ),
                builder: (context) => Container(
                  height: 170.h,
                  width: double.infinity,
                  color: Colors.white,
                ),
              );
            },
            icon: const Icon(
              Icons.camera_alt_outlined,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
