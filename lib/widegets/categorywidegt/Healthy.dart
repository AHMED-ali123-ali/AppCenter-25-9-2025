import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zamalek/manager/news_app_cupit/app_cubit.dart';
import 'package:zamalek/manager/news_app_cupit/app_state.dart';

class Helathy extends StatefulWidget {
  const Helathy({super.key});

  @override
  State<Helathy> createState() => _HelathyState();
}

class _HelathyState extends State<Helathy> {
  bool seview = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        if (state is SuccessState) {
          return SliverList.builder(
            itemCount: state.article.length,
            itemBuilder: (context, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {},
                    splashColor: Colors.orange,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.network(
                        state.article[index].urlToImage ?? "",
                        errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.broken_image, size: 80),
                      ),
                    ),
                  ),
                ),

                // العنوان
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    state.article[index].title,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),

                // الوصف
                InkWell(
                  onTap: () {
                    setState(() {
                      seview = !seview;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      state.article[index].description ?? "",
                      overflow:
                      seview ? TextOverflow.visible : TextOverflow.ellipsis,
                      maxLines: seview ? null : 2,
                      style: const TextStyle(
                          fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          );
        } else if (state is ErrorState) {
          return SliverToBoxAdapter(
            child: Center(child: Text(state.message)),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}