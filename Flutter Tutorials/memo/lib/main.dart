import 'package:flutter/material.dart';
import 'package:memo/controller.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final Controller _controller = Get.put(Controller());
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  var _controllerText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Memo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Memo'),
        ),
        body: Obx(() => ListView.builder(
              itemCount: _controller.list.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  child: ListTile(
                    title: Text(_controller.list[index].toString()),
                    onTap: () {
                      Get.dialog(
                        AlertDialog(
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Form(
                                key: _key,
                                child: TextFormField(
                                  controller: _controllerText,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  if (_key.currentState!.validate()) {
                                    _controller.list[index] =
                                        _controllerText.text;
                                    _controllerText.clear();
                                    Get.back();
                                  }
                                },
                                child: const Text('Update'),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        _controller.list.removeAt(index);
                      },
                    ),
                  ),
                );
              },
            )),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            //_controller.list.add('My Item');
            Get.dialog(
              AlertDialog(
                // title: Text('Edit Memo'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Form(
                      key: _key,
                      child: TextFormField(
                        controller: _controllerText,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_key.currentState!.validate()) {
                          _controller.list.add(_controllerText.text);
                          _controllerText.clear();
                          Get.back();
                        }
                      },
                      child: const Text('Add Item'),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
