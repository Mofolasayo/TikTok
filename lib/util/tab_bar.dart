import 'package:flutter/material.dart';

class TabBar extends StatelessWidget {
  const TabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        child: TabBar(),
      ),
    );
  }
}

/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('Simple Tab Bar'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Tab 1'),
              Tab(text: 'Tab 2'),
              Tab(text: 'Tab 3'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Content for Tab 1
            Center(child: Text('Content for Tab 1')),
            // Content for Tab 2
            Center(child: Text('Content for Tab 2')),
            // Content for Tab 3
            Center(child: Text('Content for Tab 3')),
          ],
        ),
      ),
    );
  }
}*/