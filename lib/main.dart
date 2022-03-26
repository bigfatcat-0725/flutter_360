import 'package:flutter/material.dart';
import 'package:flutter_360/screens/home_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: '360 HOTPLACE',
      home: const HomeScreen(),
    );
  }
}
