/* import 'package:flutter/material.dart';

import '../model/articles.dart';
import '../network/abi-service.dart';
import 'farmer.dart';
class sport extends StatefulWidget {
  const sport({super.key});

  @override
  State<sport> createState() => _sportState();
}

class _sportState extends State<sport> {
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
                      article![0].urlToImage ?? "")),
            ),





          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(article![0].title?? "",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
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
                article![0].description ?? "",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
            ),
          ),
        ],
    )
      );
  }
}

 */

