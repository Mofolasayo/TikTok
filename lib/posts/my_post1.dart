import 'package:flutter/material.dart';
import 'package:tik_tok/util/post_template.dart';
import 'package:tik_tok/util/video_player.dart';

class MyPost1 extends StatelessWidget {
  const MyPost1({super.key});

  @override
  Widget build(BuildContext context) {
    return const PostTemplate(
      userName: 'Dash',
      numberOfComments: '203',
      numberOfLikes: '1.2M',
      numberOfShares: '51k',
      videoDescription: 'Captions',
      numberOfBookmarks: '402',
      userPost: VideoPlayer1(
        videoUrl: 'assets/188615 (540p).mp4',
      ),
    );
  }
}
