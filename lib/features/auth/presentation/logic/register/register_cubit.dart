import 'package:flutter/material.dart';
import 'package:marketi/features/auth/domain/entities/register_entity.dart';
import 'package:marketi/features/auth/domain/entities/user_entity.dart';
import 'package:marketi/features/auth/domain/usecases/register_with_email_password_usecase.dart';
import 'package:marketi/features/auth/presentation/logic/register/register_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterWithEmailPasswordUsecase _emailPasswordUsecase;
  RegisterCubit(this._emailPasswordUsecase)
      : super(const RegisterState.initial());

  static RegisterCubit get(context) => BlocProvider.of(context);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  UserEntity? userEntity;

  void emitRegisterStates() async {
    emit(const RegisterState.loading());
    final response = await _emailPasswordUsecase.call(
      RegisterEntity(
        email: emailController.text,
        password: passwordController.text,
        name: nameController.text,
        phone: phoneController.text,
        image: 'https://wallpapercave.com/wp/wp5502061.jpg',
      ),
    );
    response.when(
      success: (data) {
        userEntity = data;

        emit(RegisterState.registerSuccess(data));
      },
      failure: (error) {
        emit(RegisterState.error(message: error));
      },
    );
  }
}
