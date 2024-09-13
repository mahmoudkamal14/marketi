import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi/features/home/presentation/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());
}
