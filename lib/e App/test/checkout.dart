import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../model/gridmodel.dart';
import '../views/homepage.dart';

class CheckoutScreen extends StatelessWidget {
  final List<Allgridmodel> cartItems;

  const CheckoutScreen({Key? key, required this.cartItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double totalPrice = 0;
    for (var item in cartItems) {
      totalPrice += double.parse(item.price!.replaceAll('USD', '').trim());
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return ListTile(
                  leading: Image.network(item.image!, height: 50.0),
                  title: Text(item.name!,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Text(item.price!),
                );
              },
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total:'),
                Text('USD $totalPrice'),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Container(
                      height: 200,
                      width: 200,
                      child: Lottie.asset(
                        'assets/animation/orderplacedanime.json',
                        repeat: false,
                        reverse: false,
                        animate: true,
                      ),
                    ),
                  );
                },
              );

              Future.delayed(Duration(seconds: 4), () {
                Navigator.pop(context); // Close the dialog
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            HomePage())); // Navigate to the next screen
              });
            },
            child: Text('Complete Purchase'),
          ),
        ],
      ),
    );
  }
}
