import 'dart:async';
import 'package:ecommerce_app_e/e%20App/views/homepage.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
    return  Scaffold(
        body: Center(child: Text("E-Buy",
        style: TextStyle(
          fontSize: 100,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: HexColor("#00008B")
        ),
        )));
  }
}
