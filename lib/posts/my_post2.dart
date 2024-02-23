import 'package:flutter/material.dart';
import 'package:tik_tok/util/post_template.dart';
import 'package:tik_tok/util/video_player.dart';

class MyPost2 extends StatelessWidget {
  const MyPost2({super.key});

  @override
  Widget build(BuildContext context) {
    return const PostTemplate(
        userName: "Mofolasayo",
        numberOfComments: '501',
        numberOfLikes: '1.5M',
        numberOfShares: '80k',
        videoDescription: "Dash's lover",
        numberOfBookmarks: '100',
        userPost: VideoPlayer1(
          videoUrl: 'assets/pexels-hissetmehurriyeti-12105849 (2160p).mp4',
        ));
  }
}
