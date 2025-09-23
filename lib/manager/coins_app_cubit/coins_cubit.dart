import 'package:bloc/bloc.dart';
import 'package:zamalek/model/coins_model.dart';
import '../../network/abi-service.dart';
import 'coins_state.dart';

class CoinsCubit extends Cubit<CoinsState> {
  Api apiservice = Api();
  List<CoinsModel> newCoins = [];

  CoinsCubit() : super(InitialState());

  getCoins() async {
    emit(CoinsLoadingState());
    try {
      newCoins = await apiservice.getCoins();
      emit(CoinsSuccessState(coins: newCoins));
    } catch (e) {
      emit(ErrorState(message: e.toString()));
    }
  }
}