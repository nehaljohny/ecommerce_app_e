// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../../controller/econtroller.dart';
// import '../../model/gridmodel.dart';
//
// class CartScreenn extends StatelessWidget {
//   final EController controller = Get.put(EController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Cart Screen"),
//       ),
//       body: Obx(
//             () => ListView.builder(
//           itemCount: controller.allProducts.length,
//           itemBuilder: (context, index) {
//             final item = controller.allProducts[index];
//             return ListTile(
//               title: Text(item.name!),
//               subtitle: Text(item.price!),
//               trailing: Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   IconButton(
//                     onPressed: () {
//                       controller.decrease(index);
//                     },
//                     icon: Icon(Icons.remove),
//                   ),
//                   Text(item.count.toString()),
//                   IconButton(
//                     onPressed: () {
//                       controller.increase(index);
//                     },
//                     icon: Icon(Icons.add),
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//       bottomNavigationBar: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 // Implement checkout logic
//               },
//               child: Text('Checkout'),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 controller.removeItems();
//               },
//               child: Text('Remove All'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
