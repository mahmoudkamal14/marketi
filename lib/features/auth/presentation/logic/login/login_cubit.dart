import 'package:flutter/material.dart';
import 'package:marketi/features/auth/data/models/auth_response_model.dart';
import 'package:marketi/features/auth/data/models/login_request_body.dart';
import 'package:marketi/features/auth/data/repository/auth_repository.dart';

import 'login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepository _authRepository;
  LoginCubit(this._authRepository) : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey();

  AuthResponseModel? userModel;

  void emitLoginStates() async {
    emit(LoginLoadingState());
    final response = await _authRepository.loginWithEmailPassword(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );

    if (response.hasData) {
      userModel = response.data;
      emit(LoginSuccessState(authResponseModel: response.data!));
    } else {
      emit(LoginErrorState(message: response.data!.message!));
    }
  }
}
