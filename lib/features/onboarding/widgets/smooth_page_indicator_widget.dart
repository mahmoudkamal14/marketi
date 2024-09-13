import 'package:flutter/material.dart';
import 'package:marketi/core/animations/build_animation.dart';
import 'package:marketi/core/theme/colors.dart';
import 'package:marketi/features/onboarding/models/list_data.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'build_item_onboarding.dart';

class SmoothPageIndicatorWidget extends StatelessWidget {
  const SmoothPageIndicatorWidget({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return animationText(
      index,
      700,
      SmoothPageIndicator(
        controller: onBoardingController,
        count: onBoardingList.length,
        axisDirection: Axis.horizontal,
        effect: const SlideEffect(
          spacing: 8.0,
          radius: 10.0,
          dotWidth: 14.0,
          dotHeight: 16.0,
          paintStyle: PaintingStyle.fill,
          strokeWidth: 1.5,
          dotColor: ColorsManager.lightBlue,
          activeDotColor: ColorsManager.darkBlue,
        ),
      ),
    );
  }
}
