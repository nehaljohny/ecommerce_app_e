import 'package:ecommerce_app_e/e%20App/views/splashpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'e App/test/testallscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData.dark(),
      home: SplashPage(),
    );
  }
}
