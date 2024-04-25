import 'package:flutter/material.dart';
import 'package:marketi/core/helper/spaces.dart';
import 'package:marketi/features/login/ui/widgets/are_you_new_in_marketi.dart';
import 'package:marketi/features/login/ui/widgets/data_of_login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              verticalSpace(70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image.asset('assets/icons/Logo_Log_In.png')],
              ),
              verticalSpace(32),
              const DataOfLoginForm(),
              verticalSpace(14),
              const AreYouNewInMarketi(),
              verticalSpace(32),
            ],
          ),
        ),
      ),
    );
  }
}
