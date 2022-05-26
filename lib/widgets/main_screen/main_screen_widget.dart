import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie/widgets/movie_list/movie_list_widget.dart';

import '../movie_list/movie_list_widget.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedIcon = 0;

  void selectTab(int index) {
    if (_selectedIcon == index) return;
    setState(() {
      _selectedIcon = index;
    });
  }

  // bool search2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(3, 37, 65, 1),
      appBar: AppBar(
        title: const Text('CINEMA'),
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       search2 = true;
        //     },
        //     icon: Icon(_selectedIcon == 1 ? Icons.search : null),
        //   ),
        // ],
      ),
      body: IndexedStack(
        index: _selectedIcon,
        children: [
          Center(
            child: Text(
              'Здесь будет Главная страница',
              style: TextStyle(fontSize: 18, color: Colors.white70),
            ),
          ),
          MovieListWidget(),
          Center(
            child: Text(
              'Здесь будет Избранное',
              style: TextStyle(fontSize: 18, color: Colors.white70),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIcon,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.movie_filter_outlined), label: 'Каталог'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark), label: 'Избранное'),
        ],
        onTap: selectTab,
      ),
    );
  }
}
