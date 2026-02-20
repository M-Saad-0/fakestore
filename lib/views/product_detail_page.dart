import 'package:fakestore/blocs/auth_bloc/auth_bloc.dart';
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
      body: Padding(
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
            Spacer(),
            // const Spacer(),
            BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
               if(state is CartLoadingState){
                 return const Center(child: CircularProgressIndicator());
               }
               final currentState = context.read<CartBloc>().state as CartSuccessState;
               final currentQuantity = currentState.carts
                   .firstWhere(
                     (e) => e.productId == productModel.id,
                     orElse: () => CartProductModel(productId: productModel.id, quantity: 0),
                   )
                   .quantity;
                return SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: SizedBox(
                          height: 65,
                          width: currentQuantity>0 ? MediaQuery.of( context).size.width * 0.70 : MediaQuery.of( context).size.width * 0.85,
                          child: ElevatedButton(
                            onPressed: () {
                              //print("Adding to cart: ${productModel.title}");
                              //print("Current quantity in cart: $currentQuantity");
                              final userId = context.read<AuthBloc>().userId; 
                              context.read<CartBloc>().add(AddToCartEvent(userId: userId??-1, cartProductModel: CartProductModel(productId: productModel.id, quantity: currentQuantity + 1)));
                            },
                            child: const Text("Add to Cart"),
                          ),
                        ),
                      ),
                      if (currentQuantity > 0) ...[
                        const SizedBox(width: 16),
                        Text("In Cart: $currentQuantity"),
                      ],
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
