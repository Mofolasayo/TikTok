import 'dart:io';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:tik_tok/util/picture_screen.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late Future<void> _initializeControllerFuture;
  late CameraController _cameraController;
  late List<CameraDescription> cameras;
  XFile? _savedImageFile;
  String? _imagePath;

  @override
  void initState() {
    super.initState();
    _initializeControllerFuture = _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    cameras = await availableCameras();
    _cameraController = CameraController(cameras[0], ResolutionPreset.max);
    await _cameraController.initialize();
  }

  void _takePicture() async {
    try {
      final XFile picture = await _cameraController.takePicture();
      setState(() {
        _savedImageFile = picture;
        _imagePath = picture.path;
      });
      /*| Navigator.push(
        context,
        MaterialPageRoute(
        builder: (context) => PicturePreview(Image: _imagePath),
      ),
      );*/
    } catch (e) {
      print("Error taking picture: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder<void>(
            future: _initializeControllerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return _cameraController.value.isInitialized
                    ? SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: AspectRatio(
                          aspectRatio: _cameraController.value.aspectRatio,
                          child: _savedImageFile != null
                              ? Image.file(File(_savedImageFile!
                                  .path)) // Display the saved image if available
                              : CameraPreview(_cameraController),
                          //CameraPreview(_cameraController),
                        ),
                      )
                    : Container();
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 16,
            child: GestureDetector(
                onTap: () {
                  _cameraController.takePicture().then((XFile? file) {
                    if (mounted) {
                      if (file != null) {
                        print("Picture saved to ${file.path}");
                      }
                    }
                  });
                },
                child: Icon(Icons.camera)),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }
}
/*_cameraController.value.isInitialized
                ? CameraPreview(_cameraController)
                : Container();*/