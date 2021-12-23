import 'package:flutter/material.dart';
import 'package:tab_container/tab_container.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('WhatsWeb'),
      ),
      body: SafeArea(
        child: TabContainer(
          // color: Theme.of(context).colorScheme.secondary,
          childCurve: Curves.slowMiddle,
          tabCurve: Curves.easeInOutSine,
          tabEdge: TabEdge.right,
          colors: const [
            Colors.purple,
            Colors.deepPurple,
            Colors.indigo,
          ],
          children: const [
            Icon(
              Icons.message,
              size: 200,
              color: Colors.white,
            ),
            Icon(
              Icons.home,
              size: 200,
              color: Colors.white,
            ),
            Icon(
              Icons.call,
              size: 200,
              color: Colors.white,
            ),
          ],
          tabs: const [
            Icon(Icons.message),
            Icon(Icons.home),
            Icon(Icons.call),
          ],
        ),
      ),
    );
  }
}
