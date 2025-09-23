/*import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zamalek/manager/news_app_cupit/app_cubit.dart';
import 'package:zamalek/manager/news_app_cupit/app_state.dart';


import '../model/articles.dart';
import '../network/abi-service.dart';
class ArticleScreen extends StatefulWidget {
  const ArticleScreen({super.key, required this.category});
  final String category;

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {

  @override
  Widget build(BuildContext context) {
    bool isExpandedDescription = false;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(" News ${widget.category}")),
      body:
        BlocBuilder<AppCubit,AppState>(builder: (context,state){
          if(state is SuccessState){
            return ListView.builder(
              itemCount:state.article.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: InkWell(
                    onTap: () {

                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          child: Image.network(
                        state.article[index].urlToImage ?? '',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                        state.article[index].title,
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(height: 12),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isExpandedDescription = !isExpandedDescription;
                            });
                          },
                          child: Text(
                            maxLines: isExpandedDescription ? null : 2,
                            overflow:
                            isExpandedDescription
                                ? TextOverflow.visible
                                : TextOverflow.ellipsis,
                     state.article[index].description ?? "No Description",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );


          }
          else if (state is ErrorState){
            return Text('${state.message}');
          }
          else {
            return Center(child: CircularProgressIndicator(),);
          }
        })
    );
  }
}*/