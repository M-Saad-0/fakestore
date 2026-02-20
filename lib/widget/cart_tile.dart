import 'package:cached_network_image/cached_network_image.dart';
import 'package:fakestore/blocs/auth_bloc/auth_bloc.dart';
import 'package:fakestore/blocs/cart_bloc/cart_bloc.dart';
import 'package:fakestore/models/cart_model.dart';
import 'package:fakestore/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItemTile extends StatelessWidget {
  final ProductModel product;
  final int quantity;

  const CartItemTile({
    super.key,
    required this.product,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            // Product Image using CachedNetworkImage for better UX [cite: 12]
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: product.image,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
                placeholder:
                    (context, url) => Container(color: Colors.grey.shade100),
              ),
            ),
            const SizedBox(width: 16),

            // Product Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '\$${product.price}',
                    // style: TextStyle(color: Colors.grey.shade600),
                  ),
                ],
              ),
            ),

            // Quantity Controls
            Column(
              children: [
                Row(
                  children: [
                    _buildIconButton(
                      icon: Icons.remove,
                      onPressed: () {
                        final userId = context.read<AuthBloc>().userId;
                        context.read<CartBloc>().add(
                          AddToCartEvent(
                            userId: userId ?? -1,
                            cartProductModel: CartProductModel(
                              productId: product.id,
                              quantity: quantity > 0 ? quantity - 1 : 0,
                            ),
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        '$quantity',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    _buildIconButton(
                      icon: Icons.add,
                      onPressed: () {
                        final userId = context.read<AuthBloc>().userId;
                        context.read<CartBloc>().add(
                          AddToCartEvent(
                            userId: userId ?? -1,
                            cartProductModel: CartProductModel(
                              productId: product.id,
                              quantity: quantity + 1,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8),
      ),
      child: IconButton(
        icon: Icon(icon, size: 18),
        onPressed: onPressed,
        constraints: const BoxConstraints(),
        padding: const EdgeInsets.all(8),
      ),
    );
  }
}
