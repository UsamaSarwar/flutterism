import 'dart:async';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:whatsapp/Controller/controller.dart';
import 'home_screen.dart';
import 'package:get/get.dart';

// List<CameraDescription>? cameras;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Controller _controller = Get.put(Controller(cameras:await availableCameras()));
  // _controller.cameras?.value = await availableCameras();
  runApp(const HomeScreen());
}

// void main() => runApp(const HomeScreen());

// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';

// List<CameraDescription>? cameras;

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();

//   cameras = await availableCameras();
//   runApp(const CameraApp());
// }

// class CameraApp extends StatefulWidget {
//   const CameraApp({Key? key}) : super(key: key);

//   @override
//   _CameraAppState createState() => _CameraAppState();
// }

// class _CameraAppState extends State<CameraApp> {
//   CameraController? controller;

//   @override
//   void initState() {
//     super.initState();
//     controller = CameraController(cameras![0], ResolutionPreset.max);
//     controller!.initialize().then((_) {
//       if (!mounted) {
//         return;
//       }
//       setState(() {});
//     });
//   }

//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (!controller!.value.isInitialized) {
//       return Container();
//     }
//     return MaterialApp(
//       home: CameraPreview(controller!),
//     );
//   }
// }