import 'package:flutter/material.dart';
import '../models/product_model.dart';

class CartScreen extends StatelessWidget {
  final List<Product> cart;

  const CartScreen({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    int totalPrice =
        cart.fold(0, (total, item) => total + item.price);

    return Scaffold(
      appBar: AppBar(title: const Text("My Cart")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.network(cart[index].image),
                  title: Text(cart[index].name),
                  trailing: Text("₹${cart[index].price}"),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Text(
              "Total: ₹$totalPrice",
              style: const TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
