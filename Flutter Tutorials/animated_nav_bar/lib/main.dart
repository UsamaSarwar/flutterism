import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:animated_nav_bar/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _bottomNavIndex = 0;
  Map<int, dynamic> screen = {
    0: const Screen1(),
    1: const Screen2(),
    2: const Screen3(),
    3: const Screen4(),
  };
  List screens = [
    const Screen1(),
    const Screen2(),
    const Screen3(),
    const Screen4(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Animated Nav Bar'),
        ),
        // body: _bottomNavIndex == 0
        //     ? const Screen1()
        //     : _bottomNavIndex == 1
        //         ? const Screen2()
        //         : _bottomNavIndex == 2
        //             ? const Screen3()
        //             : const Screen4(),
        // body: screen[_bottomNavIndex],
        body: screens[_bottomNavIndex],
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: const [
            Icons.home,
            Icons.search,
            Icons.favorite,
            Icons.person,
          ],
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.verySmoothEdge,
          leftCornerRadius: 32,
          rightCornerRadius: 32,
          onTap: (index) => setState(() => _bottomNavIndex = index),
          //other params
        ),
      ),
    );
  }
}
