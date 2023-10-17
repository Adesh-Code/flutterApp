import 'package:basics/screens/gallery.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:camera/camera.dart';
import 'package:basics/screens/Home.dart';
import 'package:basics/screens/login.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.
  final List<CameraDescription> cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  final CameraDescription firstCamera = cameras.first;
  runApp(MyApp(
    camera: firstCamera,
  ));
}

class MyApp extends StatelessWidget {
  final CameraDescription camera;
  const MyApp({super.key, required this.camera});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.teal,
          buttonTheme: const ButtonThemeData(buttonColor: Colors.teal),
          appBarTheme: const AppBarTheme(backgroundColor: Colors.teal)),
      home: const HomeScreen(),
      routes: <String, WidgetBuilder>{
        '/homePage': (BuildContext context) => const HomeScreen(),
        '/loginPage': (BuildContext context) => const LoginScreen(),
        '/galleryPage': (BuildContext context) => GalleryScreen(
              camera: camera,
            )
      },
    );
  }
}
