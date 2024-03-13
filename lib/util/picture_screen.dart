import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class PicturePreview extends StatelessWidget {
  PicturePreview(this._imagePath, {super.key});
  final String _imagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.file(File(_imagePath)),
      ),
    );
  }
}
