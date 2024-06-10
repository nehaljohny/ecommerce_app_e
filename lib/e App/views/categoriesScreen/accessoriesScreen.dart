import 'package:flutter/material.dart';

class AccessoriesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: const Text("Accessories",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),),
      ),
    );
  }
}
