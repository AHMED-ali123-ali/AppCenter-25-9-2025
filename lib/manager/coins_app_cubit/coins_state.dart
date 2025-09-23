import 'package:zamalek/model/coins_model.dart';

import '../../model/articles.dart';
abstract class CoinsState{}
class InitialState extends CoinsState {}
class CoinsLoadingState extends CoinsState {}
class CoinsSuccessState  extends CoinsState  {
  final  List<CoinsModel> coins;

  CoinsSuccessState({required this.coins});
}
class ErrorState extends CoinsState {
  final String message;

  ErrorState({required this.message});

}