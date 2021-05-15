import 'package:flutter/material.dart';
import 'package:test_tasks/screens/adverts_screen.dart';
import 'package:test_tasks/screens/home_screen.dart';
import 'package:test_tasks/screens/notification_screen.dart';
import 'package:test_tasks/screens/profile_screen.dart';
import 'package:test_tasks/screens/search_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Map<String, Object>> _pages = [
    {
      'page': HomeScreen(),
      'title': 'Главная',
    },
    {
      'page': SearchScreen(),
      'title': 'Поиск',
    },
    {
      'page': AdvertsScreen(),
      'title': 'Реклама',
    },
    {
      'page': NotificationScreen(),
      'title': 'Уведомления',
    },
    {
      'page': ProfileScreen(),
      'title': 'Профиль',
    },
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(_pages[_selectedPageIndex]['title']),
      // ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.red,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.home_outlined),
            // ignore: deprecated_member_use
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.search_outlined),
            // ignore: deprecated_member_use
            title: Text('Favorites'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.explore_outlined),
            // ignore: deprecated_member_use
            title: Text('Favorites'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.notifications_active),
            // ignore: deprecated_member_use
            title: Text('Favorites'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.person_outline),
            // ignore: deprecated_member_use
            title: Text('Favorites'),
          ),
        ],
      ),
    );
  }
}
