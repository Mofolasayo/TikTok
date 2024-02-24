import 'package:flutter/material.dart';
import 'package:tik_tok/posts/my_post1.dart';
import 'package:tik_tok/posts/my_post2.dart';
import 'package:tik_tok/posts/my_post3.dart';
//import 'package:tik_tok/util/video_player.dart';

class UserHomePage extends StatelessWidget {
  UserHomePage({super.key});
  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.live_tv_rounded),
          title: const DefaultTabController(
            length: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Following",
                    style: TextStyle(
                      fontSize: 18,
                    )),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "For You",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          actions: const [Icon(Icons.search)],
        ),
        body: PageView(
            controller: _controller,
            scrollDirection: Axis.vertical,
            children: const [
              MyPost1(),
              MyPost2(),
              MyPost3(),
            ]));
  }
}
