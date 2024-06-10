import 'package:ecommerce_app_e/e%20App/views/inhomeScreens/cartScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import '../model/gridmodel.dart';
import '../test/testallscreen.dart';
import '../test/checkout.dart';
import 'inhomeScreens/bestsellingScreen.dart';
import 'inhomeScreens/categoryScreen.dart';
import 'inhomeScreens/favoriteScreen.dart';
import 'inhomeScreens/giftsScreen.dart'; // Import the file where Homeegridmodel is defined

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          "Home",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 400,
              height: 130,
              decoration: BoxDecoration(
                color: HexColor("#00008B"),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bose Home Speaker',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'USD 279',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/images/bosehspeakerr.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => CategoriesScreen());
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 38,
                            backgroundColor: Colors.blue.withOpacity(0.2),
                            child: const Icon(Icons.list,
                                size: 28, color: Colors.deepPurple),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Categories',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.deepPurple,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => FavoritesScreen());
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 38,
                            backgroundColor: Colors.blue.withOpacity(0.2),
                            child: const Icon(Icons.star_border_outlined,
                                size: 28, color: Colors.deepPurple),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Favorites',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.deepPurple,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => GiftsScreen());
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 38,
                            backgroundColor: Colors.blue.withOpacity(0.2),
                            child: const Icon(Icons.card_giftcard_outlined,
                                size: 28, color: Colors.deepPurple),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Gifts',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.deepPurple,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => BestsellingScreen());
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 38,
                            backgroundColor: Colors.blue.withOpacity(0.2),
                            child: const Icon(Icons.person_add_alt_outlined,
                                size: 28, color: Colors.deepPurple),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Best selling',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.deepPurple,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Center(
            child: Text(
              "Sales",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: HomeproductList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
            ),
            itemBuilder: (context, index) {
              return Card(
                child: Stack(
                  children: [
                    Center(
                      child: Image.network(
                        HomeproductList[index].image!,
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 10,
                      child: Text(
                        HomeproductList[index].offer!,
                        style: const TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      bottom: 10,
                      child: Text(
                        HomeproductList[index].name!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
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
