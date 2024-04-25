import 'package:flutter/material.dart';
import 'package:marketi/core/helper/spaces.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/core/widgets/icon_navigate_pop.dart';
import 'package:marketi/features/login/ui/widgets/pin_put.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            Row(
              children: [
                const IconNavigatePop(),
                horizontalSpace(8),
                Text('Verification Code', style: AppStyles.style16Medium),
              ],
            ),
            verticalSpace(57),
            Image.asset(
                'assets/images/Illustration_Verification_Code_With_Email.png'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 22),
              child: Text(
                'Please enter the 4 digit code\n   sent to: You@gmail.com',
                style: AppStyles.style16Medium,
              ),
            ),
            const PinCodeVerification(),
          ],
        ),
      )),
    );
  }
}
