

import '../../model/articles.dart';


abstract class AppState{}

class InitialState extends AppState {}
class loadingState extends AppState {}
class SuccessState  extends AppState  {
 final  List<Articles> article;

  SuccessState({required this.article});
}
class ErrorState extends AppState {
  final String message;

  ErrorState({required this.message});

}