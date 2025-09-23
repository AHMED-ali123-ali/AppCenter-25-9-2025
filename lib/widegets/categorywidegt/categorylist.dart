import 'package:flutter/material.dart';
import '../../model/articles.dart';
import '../../model/data.dart';
import '../../network/abi-service.dart';
import 'category_item.dart';

class categorylist extends StatefulWidget {


  @override
  State<categorylist> createState() => _categorylistState();
}

class _categorylistState extends State<categorylist> {
  @override
  Widget build(BuildContext context) {
    return
      SliverToBoxAdapter(
        child:    SizedBox(
          height: 160,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              return categoryitem(value:news[index]);
            },itemCount: news.length,),
        )
      );

  }}


