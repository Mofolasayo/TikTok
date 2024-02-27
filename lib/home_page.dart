import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:tik_tok/pages/add.dart';
import 'package:tik_tok/pages/friends.dart';
import 'package:tik_tok/pages/home.dart';
import 'package:tik_tok/pages/inbox.dart';
import 'package:tik_tok/pages/profile.dart';
import 'package:tik_tok/util/custom_button.dart';

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
    const UserHomePage(),
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
            selectedItemColor: Colors.white,
            onTap: navigateBar,
            backgroundColor: Colors.black,
            selectedFontSize: 11,
            unselectedFontSize: 11,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 25),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.people_alt_outlined,
                    size: 25,
                  ),
                  label: 'Friends'),
              BottomNavigationBarItem(icon: CustomButton(), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.mail_outline_rounded,
                    //color: Colors.white,
                    size: 25,
                  ),
                  label: 'Inbox'),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded, size: 25),
                label: 'Profile',
              )
            ]));
  }
}
