/*
 import 'package:flutter/material.dart';

import 'package:news_application/model/articles.dart';
import 'package:news_application/network/abi-service.dart';
class farmer extends StatefulWidget {
  const farmer({super.key});

  @override
  State<farmer> createState() => _farmerState();
}

class _farmerState extends State<farmer> {

  Api api = Api();

  List<Articles>? article;

  @override
  void initState() {
    getarticle();
    // TODO: implement initState
    super.initState();
  }

  getarticle()async{

    article= await api.getnews();

    setState(() {

    });

  }

  @override
  Widget build(BuildContext context) {
    return
    article == null?
    SliverToBoxAdapter(
      child: Center(
        child: CircularProgressIndicator(),
      ),
    ):
    SliverToBoxAdapter(
        child:
      Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: (){},
            splashColor: Colors.orange,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.network(
                    article![1].urlToImage ?? "")),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(article![1].title ?? "",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        ),





        InkWell(
          onTap: (){
            setState(() {
              seview = !seview;
            });
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:20),
            child: Text(
              overflow: seview ? TextOverflow.visible:TextOverflow.ellipsis,
              maxLines: seview? null: 2,
              article![1].description ?? "",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
          ),
        ),

      ],

    )
      );
  }
}

 */

bool seview= false;