import 'package:ecommerce_app_e/e%20App/views/categoriesScreen/accessoriesScreen.dart';
import 'package:ecommerce_app_e/e%20App/views/categoriesScreen/allscreen.dart';
import 'package:ecommerce_app_e/e%20App/views/categoriesScreen/computersScreen.dart';
import 'package:ecommerce_app_e/e%20App/views/categoriesScreen/smartobjectsScreen.dart';
import 'package:ecommerce_app_e/e%20App/views/categoriesScreen/smartphoneScreen.dart';
import 'package:ecommerce_app_e/e%20App/views/categoriesScreen/speakerScreen.dart';
import 'package:ecommerce_app_e/e%20App/views/inhomeScreens/cartScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../test/testallscreen.dart';
import '../../test/checkout.dart';
import '../homepage.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Categories",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          GestureDetector(
            onTap: () {
              Get.to(() => Allscreen());
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 8),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.blue.withOpacity(.1),
              ),
              child: const Center(
                child: Text(
                  "All",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => ComputersScreen());
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 8),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.blue.withOpacity(.1),
              ),
              child: const Center(
                child: Text(
                  "Computers",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => AccessoriesScreen());
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 8),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.blue.withOpacity(.1),
              ),
              child: const Center(
                child: Text(
                  "Accessories",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => SmartphoneScreen());
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 8),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.blue.withOpacity(.1),
              ),
              child: const Center(
                child: Text(
                  "Smartphones",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => SmartobjectsScreen());
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 8),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.blue.withOpacity(.1),
              ),
              child: const Center(
                child: Text(
                  "Smart objects",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => SpeakerScreen());
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 8),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.blue.withOpacity(.1),
              ),
              child: const Center(
                child: Text(
                  "Speakers",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
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
                _onItemTapped(3);
              },
              icon: Icon(Icons.person_outline_outlined, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}
