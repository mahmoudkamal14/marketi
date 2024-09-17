import 'package:flutter/material.dart';
import 'package:marketi/core/routes/extentions.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/core/routes/routes.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/core/widgets/app_text_button.dart';
import 'package:marketi/core/widgets/app_text_form_field.dart';
import 'package:marketi/core/widgets/icon_navigate_pop.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

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
                Text('Create New Password', style: AppStyles.style16Medium),
              ],
            ),
            verticalSpace(57),
            Image.asset('assets/images/Illustration_Create_New_Password.png'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 22),
              child: Text(
                '   New password must be'
                '\ndifferent from last password',
                style: AppStyles.style16Medium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Password', style: AppStyles.style14Medium),
                  verticalSpace(4),
                  AppTextFormField(
                    hintText: '*********',
                    textInputType: TextInputType.visiblePassword,
                    //  controller: LoginCubit.get(context).passwordController,
                    prefixIcon: const Icon(Icons.lock_clock_outlined),
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return 'Password must not be empty';
                      }
                    },
                  ),
                  verticalSpace(8),
                  Text('Confirm Password', style: AppStyles.style14Medium),
                  verticalSpace(4),
                  AppTextFormField(
                    hintText: '*********',
                    textInputType: TextInputType.visiblePassword,
                    //  controller: LoginCubit.get(context).passwordController,
                    prefixIcon: const Icon(Icons.lock_clock_outlined),
                    validator: (p0) {
                      if (p0!.isEmpty) {
                        return 'Confirm Password must not be empty';
                      }
                    },
                  ),
                  verticalSpace(22),
                  AppTextButton(
                    textButton: 'Save Password',
                    onPressed: () {
                      context.navigateTo(Routes.congratulations);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
