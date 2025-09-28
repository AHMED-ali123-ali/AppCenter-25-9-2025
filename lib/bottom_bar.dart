import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zamalek/screens/home_screen.dart';

import 'coins_app/screens/coins_screen.dart';
import 'manager/navation_bar_cubit/bottom_navation_cubit.dart';
import 'manager/navation_bar_cubit/bottom_navation_state.dart';


class NavigationBarItemScreen extends StatelessWidget {
  const NavigationBarItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = const [homeScreen(), CoinsScreen()];

    return BlocBuilder<ButtonNavationBarCubit, BottomNavationState>(
      builder: (context, state) {
        int currentIndex = 0;
        if (state is ButtonNavationBarSuccessState) {
          currentIndex = state.index;
        }
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            backgroundColor: const Color(0xFF123456),
            currentIndex: currentIndex,
            onTap: (value) {
              context.read<ButtonNavationBarCubit>().changeIndex(value);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.newspaper),
                label: "News",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.currency_bitcoin),
                label: "Coins",
              ),
            ],
          ),
          body: screens[currentIndex],
        );
      },
    );
  }
}