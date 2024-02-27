// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:tik_tok/posts/my_post1.dart';
import 'package:tik_tok/posts/my_post2.dart';
import 'package:tik_tok/posts/my_post3.dart';

//import 'package:tik_tok/util/video_player.dart';
class UserHomePage extends StatefulWidget {
  const UserHomePage({super.key});

  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

bool _isFollowingSelected = true;

class _UserHomePageState extends State<UserHomePage> {
  @override
  Widget build(BuildContext context) {
    final _controller = PageController(initialPage: 0);
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: const Icon(Icons.live_tv_rounded),
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () => {
                    setState(() {
                      _isFollowingSelected = true;
                    })
                  },
                  child: Text("Following",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: _isFollowingSelected ? 18 : 15,
                          fontWeight: _isFollowingSelected
                              ? FontWeight.bold
                              : FontWeight.normal,
                          color: _isFollowingSelected
                              ? Colors.white
                              : Colors.grey)),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () => {
                    setState(() {
                      _isFollowingSelected = false;
                    })
                  },
                  child: Text("For You",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: !_isFollowingSelected ? 18 : 15,
                          fontWeight: !_isFollowingSelected
                              ? FontWeight.bold
                              : FontWeight.normal,
                          color: !_isFollowingSelected
                              ? Colors.white
                              : Colors.grey)),
                ),
              ]),
          actions: const [
            Icon(Icons.search, size: 25),
            SizedBox(width: 10),
          ],
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

/*class UserHomePage1 extends StatelessWidget {
  UserHomePage1({super.key});
  final _controller1 = PageController(initialPage: 0);
  bool _isFollowingSelected1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: const Icon(Icons.live_tv_rounded),
          title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Following",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontSize: _isFollowingSelected1 ? 18 : 14,
                        color: _isFollowingSelected1
                            ? Colors.white
                            : Colors.grey)),
                Text(
                  "    ",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 14, color: Colors.grey),
                ),
                GestureDetector(
                  onTap: () => {
                    /*setState(() {
                      _isFollowingSelected = false
                    })*/
                  },
                  child: Text("For You",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: !_isFollowingSelected1 ? 18 : 14,
                          color: !_isFollowingSelected1
                              ? Colors.white
                              : Colors.grey)),
                ),
              ]),
          actions: const [Icon(Icons.search, size: 25)],
        ),
        body: PageView(
            controller: _controller1,
            scrollDirection: Axis.vertical,
            children: const [
              MyPost1(),
              MyPost2(),
              MyPost3(),
            ]));
  }
}
/* leading: const Icon(Icons.live_tv_rounded),
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
          actions: const [Icon(Icons.search)],*/
          /*length: 2,
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
            ),*/
            /*children: [
                TabBar(
                  tabs: [
                    Tab(
                      child: Text("Following",
                          style: TextStyle(
                            fontSize: 18,
                          )),
                    ),
                    Tab(
                      child: Text(
                        "For You",
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  ],
                ),
                Expanded(child: TabBarView(children: [FirstTab()]))
              ],*/
              */
              /*Text("    ", style: Theme.of(context).textTheme.bodyLarge!
                    //.copyWith(fontSize: 14, color: Colors.grey),
                    ),*/