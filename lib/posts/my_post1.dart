import 'package:flutter/material.dart';
import 'package:tik_tok/util/post_template.dart';
import 'package:tik_tok/util/video_player.dart';

class MyPost1 extends StatelessWidget {
  const MyPost1({super.key});

  @override
  Widget build(BuildContext context) {
    return const PostTemplate(
      userName: 'Dash',
      discImage:
          'https://pbs.twimg.com/media/FJE-yDcXEAMsxeD?format=jpg&name=small',
      profileImage:
          'https://pbs.twimg.com/media/FJE-yDcXEAMsxeD?format=jpg&name=small',
      numberOfComments: '203',
      numberOfLikes: '1.2M',
      numberOfShares: '51k',
      videoDescription: 'Captions',
      numberOfBookmarks: '402',
      userPost: VideoPlayer1(
        videoUrl:
            'https://player.vimeo.com/external/490881499.sd.mp4?s=414613a701f3c392a3e8c4d4bdd3489978c54ff3&profile_id=165&oauth2_token_id=57447761',
      ),
    );
  }
}
