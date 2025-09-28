
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../Model/category_list.dart';
import '../../network/Api.dart';
import 'app_stateproduct.dart';
class proudectcupit extends Cubit<AppStateproduct> {
  proudectcupit(): super(InitialState());

  abi apiservice = abi();
  List<ProductCard> proudect = [];

  void run() async {
    emit(loadingState());
    try {
      proudect = await apiservice.getNow();
      emit(SuccessStates(product: proudect));
    } catch (e) {
      emit(ErrorState(message: e.toString()));
    }
  }
}