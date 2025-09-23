import 'package:dio/dio.dart';

import '../model/articles.dart';
import '../model/coins_model.dart';

class Api {

  Dio dio = Dio();

  Future<List<Articles>> getnews({required String  value}) async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&category=$value&apiKey=c33eb00f2a9f413f8a89befce038a012');

    Map<String,dynamic> json = response.data;
   List<Articles> arictles = [];
   for (var item in json ['articles']){
     arictles.add(
       Articles(title:item['title'], description: item['description'], urlToImage:item['urlToImage'] , url: item['url'])
     );
   }
   return arictles;
    
  }
  Future<List<CoinsModel>> getCoins() async {
    Response response = await dio.get(
      "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&page=1&price_change_percentage=24h",
    );
    List<dynamic> json = response.data;
    List<CoinsModel> coins = [];
    for (var item in json) {
      coins.add(
        CoinsModel(
          name: item["name"],
          symbol: item["symbol"],
          image: item["image"],
          current_price: item["current_price"],
          price_change_percentage_24h: item["price_change_percentage_24h"],
        ),
      );
    }
    return coins;
  }



}




