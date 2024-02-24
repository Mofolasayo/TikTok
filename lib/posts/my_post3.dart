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
        videoUrl:
            'https://player.vimeo.com/external/463005292.hd.mp4?s=787dbb50b62308a4b5751931c98bd5f61e12ebbe&profile_id=174&oauth2_token_id=57447761',
      ),
    );
  }
}
