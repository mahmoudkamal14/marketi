import 'package:flutter/material.dart';
import 'package:marketi/core/helper/spaces.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/features/onboarding/ui/widgets/build_item_onboarding.dart';

class TextOnBoarding extends StatelessWidget {
  const TextOnBoarding({
    super.key,
    required this.widget,
  });

  final BuildItemOnBoarding widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          model[widget.index!].title,
          textAlign: TextAlign.center,
          style: AppStyles.style20SemiBold,
        ),
        verticalSpace(44),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            model[widget.index!].body,
            style: AppStyles.style14Medium.copyWith(height: 0),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
