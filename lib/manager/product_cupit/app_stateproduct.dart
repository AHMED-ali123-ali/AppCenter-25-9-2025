

import '../../Model/category_list.dart';

abstract class AppStateproduct{}

class InitialState extends AppStateproduct {}
class loadingState extends AppStateproduct {}
class SuccessStates  extends AppStateproduct  {
  final  List<ProductCard> product;
  SuccessStates({required this.product});
}
class ErrorState extends AppStateproduct {
  final String message;

  ErrorState({required this.message});

}