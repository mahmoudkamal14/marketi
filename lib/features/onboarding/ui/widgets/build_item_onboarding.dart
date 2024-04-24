// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketi/core/database/cache_helper.dart';
import 'package:marketi/core/helper/extentions.dart';
import 'package:marketi/core/helper/spaces.dart';
import 'package:marketi/core/routes/routes.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/core/theme/colors.dart';
import 'package:marketi/core/widgets/app_text_button.dart';
import 'package:marketi/features/onboarding/data/models/list_data.dart';
import 'package:marketi/features/onboarding/data/models/onboarding_model.dart';
import 'package:marketi/features/onboarding/ui/widgets/text_onboarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BuildItemOnBoarding extends StatefulWidget {
  BuildItemOnBoarding({super.key, this.index});
  int? index;

  @override
  State<BuildItemOnBoarding> createState() => _BuildItemOnBoardingState();
}

PageController onBoardingController = PageController();

List<OnBoardingModel> model = onBoardingList;

class _BuildItemOnBoardingState extends State<BuildItemOnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            SvgPicture.asset(
              model[widget.index!].image,
            ),
            verticalSpace(24),
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
            verticalSpace(24),
            TextOnBoarding(widget: widget),
            verticalSpace(180),
            AppTextButton(
              textStyle: AppStyles.style18Medium,
              textButton: model[widget.index!].textButton,
              onPressed: () {
                if (widget.index! != 2) {
                  setState(() {
                    onBoardingController.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.linearToEaseOut,
                    );
                  });
                } else {
                  submitOnBoarding(context);
                }
              },
              buttonHeight: 48,
              buttonWidth: 347,
            ),
            verticalSpace(21)
          ],
        ),
      ),
    );
  }

  void submitOnBoarding(BuildContext context) {
    context.navigateToReplacement(Routes.loginScreen);
    CacheHelper().saveData(
      key: Routes.onBoardingScreen,
      value: true,
    );
  }
}
