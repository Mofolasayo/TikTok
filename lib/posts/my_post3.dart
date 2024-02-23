import 'package:flutter/material.dart';
import 'package:tik_tok/util/post_template.dart';
import 'package:tik_tok/util/video_player.dart';

class MyPost3 extends StatelessWidget {
  const MyPost3({super.key});

  @override
  Widget build(BuildContext context) {
    return const PostTemplate(
      userName: "GirlsCanCodeFlutter",
      numberOfComments: '200',
      numberOfLikes: '1.8M',
      numberOfShares: '512k',
      videoDescription: 'Captions',
      numberOfBookmarks: '520',
      userPost: VideoPlayer1(
        videoUrl: 'assets/pexels-ammad-rasool-11899323 (1440p).mp4',
      ),
    );
  }
}
