// import 'dart:async';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:get/get.dart';
import 'package:whatsapp/Controller/controller.dart';

// List<CameraDescription>? cameras;

// Future<void> getCameraPermission() async {
//   cameras = await availableCameras();
// }

class WhatsappCamera extends StatefulWidget {
  const WhatsappCamera({Key? key}) : super(key: key);

  @override
  _WhatsappCameraState createState() => _WhatsappCameraState();
}

class _WhatsappCameraState extends State<WhatsappCamera> {
  CameraController? cameraController;
  Controller controller = Get.find();

  @override
  void initState() {
    super.initState();
    // getCameraPermission();
    cameraController = CameraController(controller.cameras![0], ResolutionPreset.max);
    cameraController!.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    cameraController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!cameraController!.value.isInitialized) {
      return Container();
    }
    return Material(
      child: CameraPreview(cameraController!),
    );
  }
}
