import 'package:flutter/material.dart';
import 'package:tik_tok/util/camera_page1.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserAddPage extends StatelessWidget {
  const UserAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 22,
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          const CameraPage1(),
          Positioned(
            left: 0,
            right: 0,
            top: 60,
            child: Row(
              children: [
                // SizedBox(width: 10),

                const Icon(
                  FontAwesomeIcons.x,
                  size: 18,
                ),
                SizedBox(width: 100),
                Container(
                  width: 140,
                  height: 40,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(0, 0, 0, 0.5),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.music,
                        size: 15,
                      ),
                      Text(
                        '  Add Sound',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 60,
            right: 10,
            child: Column(children: [
              Icon(
                Icons.cached_sharp,
                size: 30,
              ),
              Text(
                'Flip',
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 18,
              ),
              Icon(
                Icons.flash_off_sharp,
                size: 30,
              ),
              Text(
                'Flash',
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 18,
              ),
              Icon(
                Icons.rate_review_outlined,
                size: 30,
              ),
              Text(
                'Ratio',
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 18,
              ),
              Icon(Icons.person_3),
              Text(
                'Beautify',
                style: TextStyle(fontSize: 12),
              ),
            ]),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text(
                      "Effects",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 35,
                      height: 35,
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text(
                      "Upload",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
/*leading: const Icon(
          FontAwesomeIcons.x,
          size: 18,
        ),
        centerTitle: true,
        title: Container(
          width: 150,
          height: 40,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(0, 0, 0, 0.5),
              borderRadius: BorderRadius.circular(10)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                FontAwesomeIcons.music,
                size: 15,
              ),
              Text(
                '  Add Sound',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        actions: const [
          Icon(
            Icons.cached_rounded,
            size: 25,
            //Icons.flip_camera_android_outlined,
          ),
          SizedBox(
            width: 15,
          )
        ],*/