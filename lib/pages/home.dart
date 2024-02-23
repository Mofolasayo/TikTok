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
