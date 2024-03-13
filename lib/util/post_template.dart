import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tik_tok/util/button.dart';
import 'package:tik_tok/util/disc.dart';
import 'package:tik_tok/util/profile_button.dart';

class PostTemplate extends StatelessWidget {
  final String userName;
  final String videoDescription;
  final String numberOfLikes;
  final String numberOfComments;
  final String numberOfShares;
  final String hashtags;
  final String numberOfBookmarks;
  final userPost;
  final String discImage;
  final String profileImage;
  // ignore: prefer_typing_uninitialized_variables
  //final userPost;
  // ignore: use_key_in_widget_constructors
  const PostTemplate({
    required this.userName,
    required this.numberOfComments,
    required this.numberOfLikes,
    required this.numberOfShares,
    required this.videoDescription,
    this.hashtags = ' #fyp #flutter #dash #butterfly',
    required this.numberOfBookmarks,
    required this.userPost,
    required this.discImage,
    required this.profileImage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        userPost,
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
              alignment: const Alignment(-1.0, 1.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: videoDescription,
                          style: const TextStyle(color: Colors.white)),
                      TextSpan(
                          text: hashtags,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white))
                    ]))
                  ])),
        ),
        //buttons
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            alignment: const Alignment(1.0, 1.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ProfileButton(
                  image: profileImage,
                ),
                const SizedBox(height: 15.0),
                MyButton(number: numberOfLikes, icon: Icons.favorite),
                MyButton(number: numberOfComments, icon: Icons.chat_bubble),
                MyButton(
                  number: numberOfBookmarks,
                  icon: Icons.bookmark_rounded,
                  buttonSize: 35.0,
                ),
                MyButton(
                  number: numberOfShares,
                  icon: FontAwesomeIcons.share,
                  buttonSize: 25.0,
                ),
                Disc(image: discImage),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
