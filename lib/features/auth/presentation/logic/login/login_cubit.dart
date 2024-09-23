import 'package:flutter/material.dart';
import 'package:marketi/features/auth/data/models/auth_response_model.dart';
import 'package:marketi/features/auth/data/models/login_request_body.dart';
import 'package:marketi/features/auth/data/repository/auth_repository.dart';

import 'login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepository _authRepository;
  LoginCubit(this._authRepository) : super(const LoginState.initial());

  static LoginCubit get(context) => BlocProvider.of(context);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  AuthResponseModel? userModel;

  void emitLoginStates() async {
    emit(const LoginState.loading());
    final response = await _authRepository.loginWithEmailPassword(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (data) {
        userModel = data;
        emit(LoginState.loginSuccess(data));
      },
      failure: (error) {
        emit(LoginState.error(message: error));
      },
    );
  }
}
