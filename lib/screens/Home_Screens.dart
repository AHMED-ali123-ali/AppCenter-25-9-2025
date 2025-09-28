import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Model/category_list.dart';
import '../manager/product_cupit/app_stateproduct.dart';
import '../manager/product_cupit/product-cupit.dart';
import '../network/Api.dart';
import '../widegets/proudect_item.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
        create: (_) => proudectcupit ()..run(),
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green,
              title: Text('Application of products'),
              centerTitle: true,
            ),
            body: BlocBuilder<proudectcupit, AppStateproduct>(
                builder: (context, state) {
                  if (state is loadingState) {
                    return Center(child: CircularProgressIndicator());
                  } else if (state is SuccessStates) {
                    return ListView.builder(
                      itemCount: state.product.length,
                      itemBuilder: (context, index) {
                        return ProductItem(product: state.product[index]);
                      },
                    );
                  } else if (state is ErrorState) {
                    return Center(child: Text(state.message));
                  }
                  return Container(); // InitialState


  })));
}}
