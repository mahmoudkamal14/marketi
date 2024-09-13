import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/routes/extentions.dart';
import 'package:marketi/core/routes/routes.dart';
import 'package:marketi/features/auth/presentation/logic/login/login_cubit.dart';
import 'package:marketi/features/auth/presentation/logic/login/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      child: child,
      listenWhen: (previous, current) =>
          current is Loading || current is LoginSuccess || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => Center(
                child:
                    Image.asset('assets/images/Animation - 1726144698470.gif'),
              ),
            );
          },
          loginSuccess: (userEntity) {
            context.pop();
            context.navigateTo(Routes.navBarLayout);
          },
          error: (message) {
            setupErrorState(context, message);
          },
        );
      },
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(error),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: const Text(
              'OK',
            ),
          ),
        ],
      ),
    );
  }
}
