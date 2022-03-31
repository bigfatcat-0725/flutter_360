import 'package:flutter/material.dart';
import 'package:flutter_360/screens/auth/login_screen.dart';
import 'package:get/get.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: '360 HOTPLACE',
      home: LoginScreen(),
    );
  }
}
