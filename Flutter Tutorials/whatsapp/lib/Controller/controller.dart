import 'package:get/get.dart';
// import 'dart:async';
// import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class Controller extends GetxController {
  List<CameraDescription>? cameras;
  Controller({required this.cameras});
}
