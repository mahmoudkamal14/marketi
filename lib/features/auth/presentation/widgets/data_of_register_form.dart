import 'package:flutter/material.dart';
import 'package:marketi/core/function/validators.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/core/widgets/app_text_button.dart';
import 'package:marketi/core/widgets/app_text_form_field.dart';

class DataOfRegisterForm extends StatelessWidget {
  const DataOfRegisterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('الإسم', style: AppStyles.style14Medium),
              verticalSpace(2),
              AppTextFormField(
                hintText: 'الإسم الكامل',
                textInputType: TextInputType.name,
                prefixIcon: const Icon(Icons.person_4_outlined),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Full Name must not be empty';
                  }
                },
              ),
              verticalSpace(8),
              Text('البريد الإلكتروني', style: AppStyles.style14Medium),
              verticalSpace(2),
              AppTextFormField(
                hintText: 'You@gmail.com',
                textInputType: TextInputType.emailAddress,
                prefixIcon: const Icon(Icons.email_outlined),
                validator: (value) {
                  emailValidator(value);
                },
              ),
              verticalSpace(8),
              Text('كلمة المرور', style: AppStyles.style14Medium),
              verticalSpace(2),
              AppTextFormField(
                hintText: '*********',
                textInputType: TextInputType.visiblePassword,
                prefixIcon: const Icon(Icons.lock_clock_outlined),
                validator: (value) {
                  passwordValidator(value);
                },
              ),
              verticalSpace(8),
              Text('رقم الهاتف', style: AppStyles.style14Medium),
              verticalSpace(2),
              AppTextFormField(
                hintText: '01256582438',
                textInputType: TextInputType.phone,
                prefixIcon: const Icon(Icons.lock_clock_outlined),
                validator: (value) {},
              ),
              verticalSpace(32),
              AppTextButton(
                textButton: 'إنشاء حساب',
                onPressed: () {
                  validateThenDoSignUp(context);
                },
              ),
              verticalSpace(32),
            ],
          ),
        ),
      ],
    );
  }

  void validateThenDoSignUp(BuildContext context) {
    // if (SignUpCubit.get(context).signUpFormKey.currentState!.validate()) {
    //   SignUpCubit.get(context).emitSignUpStates();
    // }
  }
}
