import 'package:daryo_uz_project/features/info/info_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/main_bloc.dart';
import 'home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepOrange,
            centerTitle: true,
            title: const Text(
              'Daryo',
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),

          ),
          body: IndexedStack(
            index: state.bottomMenu.index,
            children: const [
              HomePage(),
              InfoPage(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.bottomMenu.index,
            onTap: (index) {
              context
                  .read<MainBloc>()
                  .add(SetBottomMenuEvent(menu: BottomMenu.values[index]));
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.headphones), label: 'New'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.play_circle), label: 'info'),
            ],
            backgroundColor: Colors.black,
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.indigo,
          ),
        );
      },
    );
  }
}
