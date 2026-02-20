import 'package:fakestore/models/cart_model.dart';
import 'package:fakestore/models/product_model.dart';
import 'package:flutter/material.dart';

class CartSummaryFooter extends StatelessWidget {
  final List<ProductModel> products; // From ProductSuccessState
  final List<CartProductModel> cartItems; // From CartSuccessState

  const CartSummaryFooter({super.key, 
    required this.products,
    required this.cartItems,
  });

  @override
  Widget build(BuildContext context) {
    // Calculate the total by finding each product's price
    double total = 0;
    for (var item in cartItems) {
      final product = products.firstWhere(
        (p) => p.id == item.productId,
        orElse: () => ProductModel(id: -1, price: 0, title: '', image: '', description: '', category: ''),
      );
      total += product.price * item.quantity;
    }

    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -5),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Total Amount',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Text(
                  '\$${total.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                // Implement checkout logic here
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Checkout functionality is not implemented yet.')),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              child: const Text('Checkout'),
            ),
          ],
        ),
      ),
    );
  }
}