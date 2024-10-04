import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/di/dependency_injection.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/core/widgets/app_text_button.dart';
import 'package:marketi/core/widgets/app_text_form_field.dart';
import 'package:marketi/core/widgets/icon_navigate_pop.dart';
import 'package:marketi/features/auth/data/models/auth_response_model.dart';
import 'package:marketi/features/profile/presentation/logic/profile_cubit.dart';
import 'package:marketi/features/profile/presentation/logic/profile_state.dart';
import 'package:marketi/features/profile/presentation/widgets/image_personal_info.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key, required this.userModel});

  final AuthResponseModel userModel;

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController emailController = TextEditingController();

    nameController.text = userModel.data!.name!;
    phoneController.text = userModel.data!.phone!;
    emailController.text = userModel.data!.email!;

    GlobalKey<FormState> profileFormKey = GlobalKey();

    return BlocProvider(
      create: (context) => getIt<ProfileCubit>(),
      child: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
              body: SafeArea(
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.w, vertical: 40.h),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const IconNavigatePop(),
                            const Spacer(),
                            Text('المعلومات الشخصية',
                                style: AppStyles.style24Medium),
                            const Spacer(),
                          ],
                        ),
                        verticalSpace(30),
                        const ImagePersonalInfo(),
                        verticalSpace(30),
                        Form(
                          key: profileFormKey,
                          child: Column(
                            children: [
                              AppTextFormField(
                                controller: nameController,
                                textInputType: TextInputType.name,
                                prefixIcon: const Icon(
                                  Icons.person_3_outlined,
                                  size: 24,
                                  color: Color(0xFF8CB3FF),
                                ),
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'لا يمكن ترك الاسم فارغ';
                                  }
                                },
                              ),
                              verticalSpace(20),
                              AppTextFormField(
                                controller: phoneController,
                                textInputType: TextInputType.phone,
                                prefixIcon: const Icon(
                                  Icons.phone_in_talk_outlined,
                                  size: 24,
                                  color: Color(0xFF8CB3FF),
                                ),
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'لا يمكن ترك رقم الهاتف فارغ';
                                  }
                                },
                              ),
                              verticalSpace(20),
                              AppTextFormField(
                                controller: emailController,
                                textInputType: TextInputType.emailAddress,
                                prefixIcon: const Icon(
                                  Icons.email_outlined,
                                  size: 24,
                                  color: Color(0xFF8CB3FF),
                                ),
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'لا يمكن ترك رقم الإيميل فارغ';
                                  }
                                },
                              ),
                              verticalSpace(50),
                              AppTextButton(
                                textButton: 'تحديث',
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
