import 'package:flutter/material.dart';
import 'package:marketi/core/theme/app_styles.dart';

class LogOutWidget extends StatelessWidget {
  const LogOutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
          width: double.infinity,
          child: ListTile(
            leading: const Icon(
              Icons.logout,
              color: Colors.red,
            ),
            title: Text(
              'تسجيل الخروج',
              style: AppStyles.style24Medium,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Color(0xFF8CB3FF),
            ),
          ),
        ),
        const Divider(
          color: Color(0xFF8CB3FF),
          height: 1,
          indent: 15,
          endIndent: 15,
        ),
      ],
    );
  }
}
