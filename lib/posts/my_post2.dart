import 'package:flutter/material.dart';
import 'package:tik_tok/util/post_template.dart';
import 'package:tik_tok/util/video_player.dart';

class MyPost2 extends StatelessWidget {
  const MyPost2({super.key});

  @override
  Widget build(BuildContext context) {
    return const PostTemplate(
        userName: "Mofolasayo",
        discImage:
            'https://images.pexels.com/photos/4050290/pexels-photo-4050290.jpeg?auto=compress&cs=tinysrgb&w=600',
        profileImage:
            'https://images.pexels.com/photos/4050290/pexels-photo-4050290.jpeg?auto=compress&cs=tinysrgb&w=600',
        numberOfComments: '501',
        numberOfLikes: '1.5M',
        numberOfShares: '80k',
        videoDescription: "Dash's lover",
        numberOfBookmarks: '100',
        userPost: VideoPlayer1(
          videoUrl:
              'https://player.vimeo.com/external/394718464.sd.mp4?s=e369f0eda883f16d097c348d9be0a5a7a3baf7e0&profile_id=165&oauth2_token_id=57447761',
        ));
  }
}
