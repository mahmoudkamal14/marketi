import 'package:flutter/material.dart';
import 'package:marketi/core/helper/spaces.dart';
import 'package:marketi/core/widgets/icon_navigate_pop.dart';
import 'package:marketi/features/signup/ui/widgets/data_of_form_field_sign_up.dart';

class SignUpScrren extends StatelessWidget {
  const SignUpScrren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const IconNavigatePop(),
                  SizedBox(
                    width: 240.59,
                    height: 200,
                    child: Image.asset(
                      'assets/icons/Logo_Log_In.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              verticalSpace(18),
              const DataOfSignUpFormField(),
              //  const SignUpBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}
