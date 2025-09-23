import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zamalek/manager/coins_app_cubit/coins_cubit.dart';
import 'bottom_bar.dart';
import 'coins_app/screens/coins_screen.dart';
import 'manager/navation_bar_cubit/bottom_navation_cubit.dart';
import 'manager/news_app_cupit/app_cubit.dart';
void main(){
  runApp(Newsapp());
}
class Newsapp extends StatelessWidget {
  const Newsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider( create: (context) => AppCubit()..getArticle(value: 'General'),),
        BlocProvider( create: (context) => CoinsCubit ()..getCoins(),),
        BlocProvider( create: (context) => ButtonNavationBarCubit (),)
      ],
      child: MaterialApp(home: NavigationBarItemScreen(), debugShowCheckedModeBanner: false),
    );
  }}
