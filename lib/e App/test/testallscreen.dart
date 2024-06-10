import 'package:flutter/material.dart';
import '../model/gridmodel.dart';
import 'checkout.dart';

class TestAllScreen extends StatefulWidget {
  @override
  _TestAllScreenState createState() => _TestAllScreenState();
}

class _TestAllScreenState extends State<TestAllScreen> {
  List<Allgridmodel> allgridmodel = [
    Allgridmodel(
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzjkL2yLqdFNpg1hAtZaT8VAlINPtOPDyMKQ&s',
      name: 'Smartphones',
      price: 'USD 999',
    ),
    Allgridmodel(
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfv_31mUqNyVbMsDArvCC4FKq4emxjzWVYPA&s',
      name: 'Monitors',
      price: 'USD 999',
    ),
    Allgridmodel(
      image: 'https://media.istockphoto.com/id/182883783/photo/two-huge-speakers.jpg?s=612x612&w=0&k=20&c=zTfPZvaBig4EkH0V78EFRtbXL-ETdP1EZoSEVzlGQgA=',
      name: 'Speakers',
      price: 'USD 999',
    ),
    Allgridmodel(
      image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSEO5j-u-ATG0q2_Sz_bGIDadWK4jZDuNNKA&s',
      name: 'Watches',
      price: 'USD 999',
    ),
  ];

  // State management for cart items
  List<Allgridmodel> cartItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CartScreen(cartItems: cartItems, updateCartCallback: (ListAllgridmodel ) {  },)),
            ),
          ),
        ],
      ),
      body: GridView.builder(
        itemCount: allgridmodel.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return _buildGridItem(index);
        },
      ),
    );
  }

  Widget _buildGridItem(int index) {
    Allgridmodel item = allgridmodel[index];
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: [
            InkWell(
              onTap: () => _addToCart(item),
              child: item.image != null
                  ? Image.network(item.image!, height: 100.0) // Use item.image! to indicate it's non-null
                  : Placeholder(), // Placeholder image or widget for null URLs
            ),
            Text(item.name ?? 'No Name', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(item.price ?? 'No Price'),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  onPressed: () => _addToCart(item),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }



  void _addToCart(Allgridmodel item) {
    setState(() {
      if (!cartItems.contains(item)) {
        cartItems.add(item);
      } else {
        cartItems.remove(item); // Handle adding the same item multiple times (optional)
      }
    });
  }
}

class CartScreen extends StatelessWidget {
  final List<Allgridmodel> cartItems;
  final Function(List<Allgridmodel>) updateCartCallback;

  const CartScreen({
    Key? key,
    required this.cartItems,
    required this.updateCartCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: cartItems.isEmpty
          ? Center(child: Text('Your cart is empty'))
          : ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return ListTile(
            leading: Image.network(item.image!, height: 50.0),
            title: Text(item.name ?? 'No Name', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(item.price ?? 'No Price'),
            trailing: IconButton(
              icon: Icon(Icons.remove_circle),
              onPressed: () => _removeFromCart(context, item),
            ),
          );
        },
      ),
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          // Navigate to checkout page
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CheckoutScreen(cartItems: cartItems)),
          );
        },
        child: Text('Checkout'),
      ),
    );
  }

  void _removeFromCart(BuildContext context, Allgridmodel item) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Remove from Cart'),
          content: Text('Are you sure you want to remove this item from the cart?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                // Remove item from cart
                final updatedCart = List<Allgridmodel>.from(cartItems);
                updatedCart.remove(item);
                updateCartCallback(updatedCart); // Update cart items using the callback
              },
              child: Text('Remove'),
            ),
          ],
        );
      },
    );
  }
}

