
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bottom_navation_state.dart';

class ButtonNavationBarCubit extends Cubit<BottomNavationState> {
  ButtonNavationBarCubit() : super(ButtonNavationBarInitial());
  int index =0;

  void changeIndex(int value) {
    index = value;
    emit(ButtonNavationBarSuccessState(index: index));
  }
}