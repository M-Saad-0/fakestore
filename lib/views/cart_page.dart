import 'package:cached_network_image/cached_network_image.dart';
import 'package:fakestore/blocs/cart_bloc/cart_bloc.dart';
import 'package:fakestore/blocs/product_bloc/product_bloc.dart';
import 'package:fakestore/models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cart Page')),
      body: BlocConsumer<ProductBloc, ProductState>(
        listener: (context, state) {
          if (state is ProductErrorState) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Error: ${state.message}')));
          }
        },
        builder: (context, productState) {
          if (productState is ProductLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (productState is ProductErrorState) {
            return Center(child: Text('Error: ${productState.message}'));
          } else if (productState is ProductSuccessState) {
            final products = productState.products;
            return BlocBuilder<CartBloc, CartState>(
              builder: (context, state) {
                if (state is CartLoadingState) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is CartErrorState) {
                  return Center(child: Text('Error: ${state.error}'));
                } else if (state is CartSuccessState) {
                  final cartProducts = state.carts;
                  if (cartProducts.first.products.isEmpty) {
                    return const Center(child: Text('Your cart is empty'));
                  }

                  return ListView.builder(
                    itemCount: cartProducts.first.products.length,
                    itemBuilder: (context, index) {
                      final cart = cartProducts.first.products[index];
                      final productInCart = products.where(
                        (e) => e.id == cart.productId,
                      );
                      final cartQuantity = cart.quantity;
                      final cartProduct = cartProducts[index];
                      return ListTile(
                        leading: CachedNetworkImage(
                          imageUrl: productInCart.first.image,
                          width: 50,
                          height: 50,
                        ),
                        title: Text(productInCart.first.title),
                        subtitle: Text('\$${productInCart.first.price}'),
                        trailing:
                            cartQuantity > 0
                                ? Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        context.read<CartBloc>().add(
                                          AddToCartEvent(
                                            userId: 1,
                                            cartProductModel: CartProductModel(
                                              productId: productInCart.first.id,
                                              quantity: cartQuantity - 1,
                                            ),
                                          ),
                                        );
                                      },
                                      icon: Icon(Icons.remove),
                                    ),
                                    Text('$cartQuantity'),
                                    IconButton(
                                      onPressed: () {
                                        context.read<CartBloc>().add(
                                          AddToCartEvent(
                                            userId: 1,
                                            cartProductModel: CartProductModel(
                                              productId: productInCart.first.id,
                                              quantity: cartQuantity + 1,
                                            ),
                                          ),
                                        );
                                      },
                                      icon: Icon(Icons.add),
                                    ),
                                  ],
                                )
                                : IconButton(
                                  onPressed: () {
                                    context.read<CartBloc>().add(
                                      AddToCartEvent(
                                        userId: 1,
                                        cartProductModel: CartProductModel(
                                          productId: productInCart.first.id,
                                          quantity: 1,
                                        ),
                                      ),
                                    );
                                  },
                                  icon: Icon(Icons.add_shopping_cart),
                                ),
                      );
                    },
                  );
                }
                return const SizedBox.shrink();
              },
            );
          } else {
            return const Center(child: Text('No products found'));
          }
        },
      ),
    );
  }
}
