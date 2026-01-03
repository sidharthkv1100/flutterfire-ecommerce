import 'package:flutter/material.dart';
import '../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onAdd;

  const ProductCard({
    super.key,
    required this.product,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Image.network(
            product.image,
            height: 120,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8),
          Text(
            product.name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text("₹${product.price}"),
          const SizedBox(height: 6),
          ElevatedButton(
            onPressed: onAdd,
            child: const Text("Add to Cart"),
          ),
        ],
      ),
    );
  }
}
