import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zamalek/manager/news_app_cupit/app_cubit.dart';

import '../../model/data.dart';
import '../../screens/article_screen.dart';
class categoryitem extends StatelessWidget {
 final Category value;
 const categoryitem({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return
     Padding(
       padding: const EdgeInsets.all(2.0),
        child: InkWell(
          onTap: (){
            context.read<AppCubit>().getArticle(value: value.name);
          },
          child: CircleAvatar(
            radius: 80,
            backgroundColor: Colors.grey[200],
            child: ClipOval(
              child: CachedNetworkImage(
                imageUrl: value.imageUrl,
                fit: BoxFit.cover,
                width: 160,
                height: 160,
                placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) =>
                const Icon(Icons.error, size: 50, color: Colors.red),
              ),
            ),
          )
      ));
  }
}
