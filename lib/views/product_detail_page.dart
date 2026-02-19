import 'package:fakestore/blocs/cart_bloc/cart_bloc.dart';
import 'package:fakestore/models/cart_model.dart';
import 'package:fakestore/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductModel productModel;

  const ProductDetailPage({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(productModel.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                productModel.image,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              productModel.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              "\$${productModel.price.toStringAsFixed(2)}",
              style: const TextStyle(fontSize: 20, color: Colors.green),
            ),
            const SizedBox(height: 16),
            Text(
              productModel.description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 24),
            BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                final currentQuantity =
                    context
                        .read<CartBloc>()
                        .carts
                        .where((e) => e.productId == productModel.id)
                        .map((e) => e.quantity)
                        .firstOrNull ??
                    0;
                return SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          context.read<CartBloc>().add(
                            AddToCartEvent(
                              userId: 1,
                              cartProductModel: CartProductModel(
                                productId: productModel.id,
                                quantity: currentQuantity - 1,
                              ),
                            ),
                          );
                        },
                        icon: const Icon(Icons.remove),
                      ),
                      Text('$currentQuantity'),
                      IconButton(
                        onPressed: () {
                          context.read<CartBloc>().add(
                            AddToCartEvent(
                              userId: 1,
                              cartProductModel: CartProductModel(
                                productId: productModel.id,
                                quantity: currentQuantity + 1,
                              ),
                            ),
                          );
                        },
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
