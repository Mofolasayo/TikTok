import 'dart:math';

import 'package:flutter/material.dart';

class Disc extends StatefulWidget {
  final String image;
  const Disc({super.key, this.image = ''});

  @override
  State<Disc> createState() => _DiscState();
}

class _DiscState extends State<Disc> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));
    _animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: 45,
            width: 45,
            child: Image.asset('assets/disc3.png'),
          ),
          CircleAvatar(radius: 13, backgroundImage: NetworkImage(widget.image)),
        ],
      ),
      builder: (context, child) {
        return Transform.rotate(
          angle: 2 * pi * _animationController.value,
          child: child,
        );
      },
    );
  }
}
