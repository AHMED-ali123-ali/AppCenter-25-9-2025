import 'package:bloc/bloc.dart';
import '../../model/articles.dart';
import '../../network/abi-service.dart';
import 'app_state.dart';
class AppCubit extends Cubit<AppState>{
  Api apiservice = Api();
  List<Articles> newArticle =[];

  String selectNews='General';

  getArticle({required String value})async{
    emit(loadingState());
    try {
      newArticle = await apiservice.getnews(value:value);
      selectNews = value;
      emit(SuccessState(article:newArticle));
    } on Exception catch (e) {
      emit(ErrorState(message:e.toString()));
      // TODO
    }
  }
  AppCubit():super(InitialState());
}
