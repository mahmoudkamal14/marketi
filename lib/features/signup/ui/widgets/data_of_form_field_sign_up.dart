import 'package:flutter/material.dart';
import 'package:marketi/core/helper/spaces.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/core/widgets/app_text_button.dart';
import 'package:marketi/core/widgets/app_text_form_field.dart';

class DataOfSignUpFormField extends StatelessWidget {
  const DataOfSignUpFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      //   key: SignUpCubit.get(context).signUpFormKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Your Name', style: AppStyles.style14Medium),
                verticalSpace(2),
                AppTextFormField(
                  hintText: 'Full Name',
                  textInputType: TextInputType.name,
                  // controller: SignUpCubit.get(context).nameController,
                  prefixIcon: const Icon(Icons.person_4_outlined),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Full Name must not be empty';
                    }
                  },
                ),
                verticalSpace(8),
                Text('Email', style: AppStyles.style14Medium),
                verticalSpace(2),
                AppTextFormField(
                  hintText: 'You@gmail.com',
                  textInputType: TextInputType.emailAddress,
                  //    controller: SignUpCubit.get(context).emailController,
                  prefixIcon: const Icon(Icons.email_outlined),
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return 'Email must not be empty';
                    }
                  },
                ),
                verticalSpace(8),
                Text('Password', style: AppStyles.style14Medium),
                verticalSpace(2),
                AppTextFormField(
                  hintText: '*********',
                  textInputType: TextInputType.visiblePassword,
                  //  controller: SignUpCubit.get(context).passwordController,
                  prefixIcon: const Icon(Icons.lock_clock_outlined),
                  validator: (p0) {
                    if (p0!.isEmpty) {
                      return 'Password must not be empty';
                    }
                  },
                ),
                verticalSpace(8),
                Text('Confirm Password', style: AppStyles.style14Medium),
                verticalSpace(2),
                AppTextFormField(
                  hintText: '*********',
                  textInputType: TextInputType.visiblePassword,
                  // controller:
                  //     SignUpCubit.get(context).passwordConfirmController,
                  prefixIcon: const Icon(Icons.lock_clock_outlined),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Confirm Password must not be empty';
                    }
                    // if (value !=
                    //     SignUpCubit.get(context).passwordController.text) {
                    //   return 'Password is not correct';
                    // }
                  },
                ),
                verticalSpace(32),
                AppTextButton(
                  textButton: 'Sign Up',
                  onPressed: () {
                    //  validateThenDoSignUp(context);
                  },
                ),
                verticalSpace(32),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // void validateThenDoSignUp(BuildContext context) {
  //   if (SignUpCubit.get(context).signUpFormKey.currentState!.validate()) {
  //     SignUpCubit.get(context).emitSignUpStates();
  //   }
  // }
}
