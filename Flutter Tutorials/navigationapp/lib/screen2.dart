import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:navigationapp/screen1.dart';

class Screen2 extends StatelessWidget {
  const Screen2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SCREEN 2'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: ()=> Get.to(const Screen1()),
                child: const Text('SCREEN 1'),
              ),
              ElevatedButton(
                onPressed: ()=> Get.back(),
                child: const Text('HOME'),
              ),
            ],
          ),
        ),
      );
  }
}