import 'package:counter_app_with_getx/Controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'next_screen.dart';

class App extends StatelessWidget {
  // Step 3
  final Controller controller = Get.put(Controller());

  App({super.key});

  // Controller controller = Get.find();
  @override
  Widget build(BuildContext context) {
    // Step 1
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter'),
          actions: [
            IconButton(
              onPressed: () => Get.to( NextScreen( count: controller.count.value)),
              icon: const Icon(Icons.send),
            ),
          ],
        ),
        body: Center(
          // Step 4 & 5
          child: Obx(() => Text(controller.count.value.toString())),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => controller.count++,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
