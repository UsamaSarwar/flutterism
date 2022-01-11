import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagementapp/Controller/controller.dart';
import 'package:statemanagementapp/welcome.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final Controller _controller = Get.put(Controller());
  // After that
  // Controller _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter App'),
          actions: [
            IconButton(
              onPressed: () {
                Get.to(const Welcome());
              },
              icon: const Icon(Icons.navigate_next_rounded),
            ),
          ],
        ),
        body: Center(
          child: Obx(() => Text(
                _controller.counter.value.toString(),
                style: const TextStyle(
                  fontSize: 50,
                ),
              )),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _controller.counter.value++;
            print('Current Value of Counter is ${_controller.counter.value}');
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
