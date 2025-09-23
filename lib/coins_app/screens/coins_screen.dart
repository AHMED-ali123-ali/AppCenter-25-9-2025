import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/coins_app_cubit/coins_cubit.dart';
import '../../manager/coins_app_cubit/coins_state.dart';


class CoinsScreen extends StatelessWidget {
  const CoinsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const Color(0xFF123456),
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Coins App",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
              background: Image.network(
                "https://images.pexels.com/photos/6771740/pexels-photo-6771740.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          BlocBuilder<CoinsCubit, CoinsState>(
            builder: (context, state) {
              if (state is ErrorState) {
                return SliverFillRemaining(
                  child: Center(
                    child: Text(
                      state.message,
                      style: const TextStyle(fontSize: 18, color: Colors.red),
                    ),
                  ),
                );
              } else if (state is CoinsSuccessState) {
                return SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final coin = state.coins[index];
                    return Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 16,
                      ),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.network(
                              coin.image,
                              width: 60,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  coin.name,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  coin.symbol.toUpperCase(),
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$${coin.current_price.toStringAsFixed(2)}",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "${coin.price_change_percentage_24h.toStringAsFixed(2)}%",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color:
                                        coin.price_change_percentage_24h >=
                                            0
                                            ? Colors.green
                                            : Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }, childCount: state.coins.length),
                );
              }
              return const SliverFillRemaining(
                child: Center(child: CircularProgressIndicator()),
              );
            },
          ),
        ],
      ),
    );
  }
}