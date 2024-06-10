import 'package:flutter/material.dart';

import '../../test/testallscreen.dart';
import '../../test/checkout.dart';
import '../homepage.dart';
import '../inhomeScreens/cartScreen.dart';

class SpeakerScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: const Text("Speakers",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),),
      ),bottomNavigationBar: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> HomePage()));
            },
            icon: Icon(Icons.home_outlined, size: 30),
          ),
          IconButton(
            onPressed: () {

            },
            icon: Icon(Icons.search, size: 30),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> CartScreen(cartItems: [], updateCartCallback: (List Allgridmodel ) {  },)));
            },
            icon: Icon(Icons.shopping_cart_outlined, size: 30),
          ),
          IconButton(
            onPressed: () {
            },
            icon: Icon(Icons.person_outline_outlined, size: 30),
          ),
        ],
      ),
    ),

    );
  }
}
