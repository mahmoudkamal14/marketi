import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/core/networking/api_result.dart';
import 'package:marketi/features/auth/data/models/auth_response_model.dart';
import 'package:marketi/features/profile/data/models/logout_response_model.dart';
import 'package:marketi/features/profile/data/repo/profile_repository.dart';
import 'package:marketi/features/profile/presentation/logic/profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepository _profileRepository;
  ProfileCubit(this._profileRepository) : super(InitialProfileState());

  static ProfileCubit get(context) => BlocProvider.of(context);

  AuthResponseModel? userModel;
  LogoutResponseModel? logoutModel;

  void getProfileDate() async {
    emit(GetProfileLoadingState());

    final response = await _profileRepository.getProfile();
    if (response is Success<AuthResponseModel> &&
        response.data.status == true) {
      userModel = response.data;

      emit(GetProfileSuccessState(authResponseModel: userModel!));
    } else {
      emit(GetProfileErrorState(message: 'Your Info is not found'));
    }
  }

  // LOGOUT

  void logoutUser() async {
    emit(LogoutUserLoadingState());

    final response = await _profileRepository.logoutUser();
    if (response is Success<LogoutResponseModel>) {
      logoutModel = response.data;
      emit(LogoutUserSuccessState(logoutResponseModel: response.data));
    } else {
      emit(LogoutUserErrorState(message: 'Can not log out'));
    }
  }
}
