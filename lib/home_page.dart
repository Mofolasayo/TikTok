import 'package:flutter/material.dart';
import 'package:tik_tok/pages/add.dart';
import 'package:tik_tok/pages/friends.dart';
import 'package:tik_tok/pages/home.dart';
import 'package:tik_tok/pages/inbox.dart';
import 'package:tik_tok/pages/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigateBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    UserHomePage(),
    const UserFriendsPage(),
    const UserAddPage(),
    const UserInboxPage(),
    const UserProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: navigateBar,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people), label: 'Friends'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.add_box_rounded), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'Inbox'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Profile')
            ]));
  }
}
