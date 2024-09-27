import 'package:flutter/material.dart';
import 'package:marketi/core/networking/api_result.dart';
import 'package:marketi/features/auth/data/models/auth_response_model.dart';
import 'package:marketi/features/auth/data/models/register_request_body.dart';
import 'package:marketi/features/auth/data/repository/auth_repository.dart';
import 'package:marketi/features/auth/presentation/logic/register/register_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final AuthRepository _authRepository;
  RegisterCubit(this._authRepository) : super(RegisterInitialState());

  static RegisterCubit get(context) => BlocProvider.of(context);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  AuthResponseModel? userModel;

  void emitRegisterStates() async {
    emit(RegisterLoadingState());
    final response = await _authRepository.registerWithEmailPassword(
      RegisterRequestBody(
        email: emailController.text,
        password: passwordController.text,
        name: nameController.text,
        phone: phoneController.text,
        image: 'https://wallpapercave.com/wp/wp5502061.jpg',
      ),
    );

    if (response is Success<AuthResponseModel>) {
      userModel = response.data;
      emit(RegisterSuccessState(authResponseModel: userModel!));
    } else {
      emit(RegisterErrorState(message: userModel!.message!));
    }
  }
}
