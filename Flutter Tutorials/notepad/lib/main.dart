import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  _cameras = await availableCameras();
  runApp(
    const App(),
  );
}

late List<CameraDescription> _cameras;

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

/// CameraApp is the Main Application.
class CameraApp extends StatefulWidget {
  /// Default Constructor
  const CameraApp({Key? key}) : super(key: key);

  @override
  State<CameraApp> createState() => _CameraAppState();
}

class _AppState extends State<App> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: isDarkMode == true ? ThemeMode.dark : ThemeMode.light,
      // themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        primaryColor: Colors.amber,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.cyan,
        primaryColor: Colors.cyanAccent,
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          color: Colors.cyan,
        ),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Notepad'),
          actions: [
            IconButton(
              onPressed: () {
                // Theme change using GetX
                Get.changeThemeMode(
                    Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
                print('Get.isDarkMode: ${!Get.isDarkMode}');
                isDarkMode = !Get.isDarkMode ? true : false;
                print('isDarkMode: ${isDarkMode}');
                GetStorage().write('isDarkMode', isDarkMode);
                print('GetStorage().read("isDarkMode"): ${GetStorage().read("isDarkMode")}');
                setState(() {});
              },
              icon: Get.isDarkMode
                  ? const Icon(
                      Icons.light_mode_outlined,
                    )
                  : const Icon(
                      Icons.light_mode_rounded,
                    ),
            ),
          ],
        ),
        body: const Center(
          child: Icon(
            Icons.call,
            size: 50,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Get.to(
            () => const CameraApp(),
          ),
          child: const Icon(Icons.camera_alt_rounded),
        ),
      ),
    );
  }

  @override
  void initState() {
    GetStorage().writeIfNull('isDarkMode', false);
    isDarkMode = GetStorage().read('isDarkMode');
    print('Check 1: $isDarkMode');
    super.initState();
  }
}

class _CameraAppState extends State<CameraApp> {
  late CameraController controller;

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return Scaffold(
      body: CameraPreview(controller),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    controller = CameraController(_cameras[0], ResolutionPreset.max);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            print('User denied camera access.');
            break;
          default:
            print('Handle other errors.');
            break;
        }
      }
    });
  }
}
