import 'package:flutter/material.dart';
import 'package:marketi/core/helper/extentions.dart';
import 'package:marketi/core/helper/spaces.dart';
import 'package:marketi/core/routes/routes.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/core/widgets/app_text_button.dart';
import 'package:marketi/core/widgets/app_text_form_field.dart';
import 'package:marketi/features/login/ui/widgets/checkbox_and_forgot_password.dart';

class DataOfLoginForm extends StatelessWidget {
  const DataOfLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Email', style: AppStyles.style14Medium),
          verticalSpace(4),
          AppTextFormField(
            hintText: 'You@gmail.com',
            textInputType: TextInputType.emailAddress,
            //  controller: LoginCubit.get(context).emailController,
            prefixIcon: const Icon(Icons.email_outlined),
            validator: (p0) {
              if (p0!.isEmpty) {
                return 'Email must not be empty';
              }
            },
          ),
          verticalSpace(14),
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
          verticalSpace(7),
          const CheckBoxForgotPassword(),
          verticalSpace(14),
          AppTextButton(
            textButton: 'Login',
            onPressed: () {
              context.navigateToReplacement(Routes.navBarLayout);
            },
          ),
        ],
      ),
    );
  }
}
