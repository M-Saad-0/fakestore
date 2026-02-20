import 'package:fakestore/blocs/cart_bloc/cart_bloc.dart';
import 'package:fakestore/blocs/product_bloc/product_bloc.dart';
import 'package:fakestore/widget/cart_result.dart';
import 'package:fakestore/widget/cart_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Cart')),
      // Use MultiBlocListener for side effects (Snackbars)
      body: BlocListener<CartBloc, CartState>(
        listener: (context, state) {
          if (state is CartErrorState) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.error)));
          }
        },
        child: _buildCartContent(context),
      ),
    );
  }

  Widget _buildCartContent(BuildContext context) {
    final allProducts = context.read<ProductBloc>().allProducts;
    // Access states directly or use a combined cubit
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, cartState) {
        // 1. Handle Loading States [cite: 43]
        if (
            cartState is CartLoadingState) {
          return const Center(child: CircularProgressIndicator());
        }
    
        // 2. Data Validation
        if (
            cartState is CartSuccessState) {
          final userCarts = cartState.carts;
    
          if (userCarts.isEmpty) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shopping_cart_outlined,
                    size: 80,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Your cart is empty',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 8),
                  Text('Start adding some products!'),
                ],
              ),
            );
          }
    
          // Take first cart (or loop if multi-cart support)
          // final cart = userCarts.first;
          // final cartItems = cart.products;
    
          // if (.isEmpty) {
          //   return const Center(child: Text('Cart is empty'));
          // }
    
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: userCarts.length,
                  itemBuilder: (context, index) {
                    final item = userCarts[index];
                    final product = allProducts.where(
                      (p) => p.id == item.productId,
                    ).firstOrNull;
    
                    if (product == null) {
                      return Card(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        child: ListTile(
                          leading: const Icon(
                            Icons.broken_image,
                            color: Colors.red,
                          ),
                          title: Text(
                            'Product #${item.productId} (unavailable)',
                          ),
                          subtitle: Text('Qty: ${item.quantity}'),
                          trailing: Text('Removed or invalid item'),
                        ),
                      );
                    }
                    if(item.quantity <= 0){
                      return const SizedBox.shrink();
                    }
    
                    return CartItemTile(
                      product: product,
                      quantity: item.quantity,
                    );
                  },
                ),
              ),
              CartSummaryFooter(
                products: allProducts,
                cartItems: userCarts,
              ),
            ],
          );
        }
    
        return const Center(child: Text('Something went wrong.'));
      },
    );
  }
}
