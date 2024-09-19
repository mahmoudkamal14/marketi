import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketi/core/theme/spaces.dart';
import 'package:marketi/features/profile/ui/widgets/change_theme_mode.dart';
import 'package:marketi/features/profile/ui/widgets/check_notifications_widget.dart';
import 'package:marketi/features/profile/ui/widgets/image_profile_widget.dart';
import 'package:marketi/features/profile/ui/widgets/log_out_widget.dart';
import 'package:marketi/features/profile/ui/widgets/personal_info_widget.dart';
import 'package:marketi/features/profile/ui/widgets/profile_appbar_widget.dart';
import 'package:marketi/features/profile/ui/widgets/rate_us_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: Column(
              children: [
                const ProfileAppbarWidget(),
                const ImageProfileWidget(),
                verticalSpace(30),
                const PersonalInfoWidget(),
                const CheckNotificationsWidget(),
                const ChangeThemeMode(),
                const RateUsWidget(),
                const LogOutWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
