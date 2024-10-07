import 'package:flutter/material.dart';
import 'package:marketi/core/routes/extentions.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/core/routes/routes.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/core/widgets/app_text_button.dart';
import 'package:marketi/core/widgets/app_text_form_field.dart';
import 'package:marketi/core/widgets/icon_navigate_pop.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Form(
              child: Column(
                children: [
                  Row(
                    children: [
                      const IconNavigatePop(),
                      horizontalSpace(8),
                      Text('Forgot Password', style: AppStyles.style16Medium),
                    ],
                  ),
                  verticalSpace(57),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                          'assets/images/Illustration_Forgot_Password_With_Email.png'),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 22),
                        child: Text(
                          'Please enter your email address to\nreceive a verification code',
                          textAlign: TextAlign.center,
                          style: AppStyles.style16Medium,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child:
                                  Text('Email', style: AppStyles.style14Medium),
                            ),
                            verticalSpace(4),
                            AppTextFormField(
                              hintText: 'You@gmail.com',
                              textInputType: TextInputType.emailAddress,
                              prefixIcon: const Icon(Icons.email_outlined),
                              validator: (p0) {
                                if (p0!.isEmpty) {
                                  return 'Email must not be empty';
                                }
                              },
                            ),
                            verticalSpace(22),
                            AppTextButton(
                              textButton: 'Send Code',
                              onPressed: () {
                                context
                                    .navigateTo(Routes.verificationCodeScreen);
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
