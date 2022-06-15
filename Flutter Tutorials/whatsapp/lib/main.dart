import 'dart:async';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:whatsapp/Controller/controller.dart';
import 'home_screen.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Checking Camera Availability
  Get.put(Controller(cameras: await availableCameras()));
  runApp(const HomeScreen());
}