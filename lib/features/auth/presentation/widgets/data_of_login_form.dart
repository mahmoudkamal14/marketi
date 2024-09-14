import 'package:flutter/material.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/core/widgets/app_text_button.dart';
import 'package:marketi/core/widgets/app_text_form_field.dart';
import 'package:marketi/features/auth/presentation/logic/login/login_cubit.dart';
import 'package:marketi/features/auth/presentation/widgets/checkbox_and_forgot_password.dart';

class DataOfLoginForm extends StatelessWidget {
  const DataOfLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: LoginCubit.get(context).formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Email', style: AppStyles.style14Medium),
          verticalSpace(4),
          AppTextFormField(
            hintText: 'You@gmail.com',
            textInputType: TextInputType.emailAddress,
            controller: LoginCubit.get(context).emailController,
            prefixIcon: const Icon(Icons.email_outlined),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your email';
              }
            },
          ),
          verticalSpace(14),
          Text('Password', style: AppStyles.style14Medium),
          verticalSpace(4),
          AppTextFormField(
            hintText: '*********',
            textInputType: TextInputType.visiblePassword,
            controller: LoginCubit.get(context).passwordController,
            prefixIcon: const Icon(Icons.lock_clock_outlined),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
            },
          ),
          verticalSpace(7),
          const CheckBoxForgotPassword(),
          verticalSpace(14),
          AppTextButton(
            textButton: 'Login',
            onPressed: () {
              validateThenNavigate(context);
            },
          ),
        ],
      ),
    );
  }

  void validateThenNavigate(context) {
    if (LoginCubit.get(context).formKey.currentState!.validate()) {
      LoginCubit.get(context).emitLoginStates();
    }
  }
}
