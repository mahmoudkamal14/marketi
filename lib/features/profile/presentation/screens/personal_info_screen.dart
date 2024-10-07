import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/core/widgets/icon_navigate_pop.dart';
<<<<<<< Updated upstream
import 'package:marketi/features/auth/presentation/logic/login/login_cubit.dart';
=======
import 'package:marketi/features/auth/data/models/auth_response_model.dart';
import 'package:marketi/features/profile/presentation/logic/profile_cubit.dart';
import 'package:marketi/features/profile/presentation/logic/profile_state.dart';
>>>>>>> Stashed changes
import 'package:marketi/features/profile/presentation/widgets/image_personal_info.dart';
import 'package:marketi/features/profile/presentation/widgets/update_user_data_form.dart';

class PersonalInfoScreen extends StatelessWidget {
<<<<<<< Updated upstream
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var user = LoginCubit.get(context).userModel!.data!;
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController emailController = TextEditingController();

    nameController.text = user.name!;
    phoneController.text = user.phone!;
    emailController.text = user.email!;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 40.h),
            child: Column(
              children: [
                Row(
                  children: [
                    const IconNavigatePop(),
                    const Spacer(),
                    Text('المعلومات الشخصية', style: AppStyles.style24Medium),
                    const Spacer(),
                  ],
                ),
                verticalSpace(30),
                const ImagePersonalInfo(),
                verticalSpace(30),
                Card(
                  child: SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ListTile(
                      leading: const Icon(
                        Icons.person_3_outlined,
                        color: Color(0xFF8CB3FF),
                      ),
                      title: Text(
                        user.name!,
                        style: AppStyles.style20Medium,
                      ),
=======
  const PersonalInfoScreen({super.key, required this.userModel});

  final AuthResponseModel userModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileCubit>(),
      child: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          TextEditingController nameController = TextEditingController();
          TextEditingController phoneController = TextEditingController();
          TextEditingController emailController = TextEditingController();

          nameController.text = userModel.data!.name!;
          phoneController.text = userModel.data!.phone!;
          emailController.text = userModel.data!.email!;

          return Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
              body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.w,
                    vertical: 40.h,
                  ),
                  child: SingleChildScrollView(
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.manual,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const IconNavigatePop(),
                            const Spacer(),
                            Text(
                              'المعلومات الشخصية',
                              style: AppStyles.style24Medium,
                            ),
                            const Spacer(),
                          ],
                        ),
                        verticalSpace(30),
                        ImagePersonalInfo(userModel: userModel),
                        verticalSpace(30),
                        UpdateUserDataForm(
                          nameController: nameController,
                          phoneController: phoneController,
                          emailController: emailController,
                          userModel: userModel,
                        ),
                      ],
>>>>>>> Stashed changes
                    ),
                  ),
                ),
                verticalSpace(20),
                Card(
                  child: SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ListTile(
                      leading: const Icon(
                        Icons.phone_in_talk_outlined,
                        color: Color(0xFF8CB3FF),
                      ),
                      title: Text(
                        user.phone!,
                        style: AppStyles.style20Medium,
                      ),
                    ),
                  ),
                ),
                verticalSpace(20),
                Card(
                  child: SizedBox(
                    height: 60,
                    width: double.infinity,
                    child: ListTile(
                      leading: const Icon(
                        Icons.email_outlined,
                        color: Color(0xFF8CB3FF),
                      ),
                      title: Text(
                        user.email!,
                        style: AppStyles.style20Medium,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
