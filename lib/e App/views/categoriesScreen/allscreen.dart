import 'package:flutter/material.dart';
import '../../model/gridmodel.dart';
import '../../test/testallscreen.dart';
import '../homepage.dart';

class Allscreen extends StatefulWidget {
  @override
  State<Allscreen> createState() => _AllscreenState();
}

class _AllscreenState extends State<Allscreen> {
  int _selectedIndex = 0;
  String? _selectedSortOption;
  List<Allgridmodel> cartItems = []; // State for cart items

  // Update cart items callback function
  void _updateCartItems(List<Allgridmodel> updatedCartItems) {
    setState(() {
      cartItems = updatedCartItems;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TestAllScreen(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              icon: Icon(Icons.home_outlined, size: 30),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, size: 30),
            ),
            IconButton(
              onPressed: () {
                // Navigate to CartScreen and pass cartItems and updateCartItems callback
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartScreen(
                      cartItems: cartItems,
                      updateCartCallback: _updateCartItems,
                    ),
                  ),
                ).then((value) {
                  // Update cart items when returning from CartScreen
                  setState(() {});
                });
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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
