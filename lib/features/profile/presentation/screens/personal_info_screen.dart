import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/theme/app_styles.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/core/widgets/icon_navigate_pop.dart';
import 'package:marketi/features/auth/presentation/logic/login/login_cubit.dart';
import 'package:marketi/features/profile/presentation/widgets/image_personal_info.dart';

class PersonalInfoScreen extends StatelessWidget {
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
