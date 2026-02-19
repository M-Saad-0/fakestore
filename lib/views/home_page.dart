import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fakestore/blocs/cart_bloc/cart_bloc.dart';
import 'package:fakestore/blocs/product_bloc/product_bloc.dart';
import 'package:fakestore/constants/product_categories.dart';
import 'package:fakestore/models/cart_model.dart';
import 'package:fakestore/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page'), actions: [Icon(Icons.search)],),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menu', style: TextStyle(color: Colors.white, fontSize: 24),),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text('Cart'),
              onTap: () {
                Navigator.pushNamed(context, '/cart');
              },
            ),
            ListTile(
              leading: const Icon(Icons.color_lens_outlined),
              title: const Text('Change Theme'),
              onTap: () {
                Navigator.pushNamed(context, '/theme');
              },
            ),
          ],
        ),
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          if (state is ProductLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ProductErrorState) {
            return Center(child: Text('Error: ${state.message}'));
          } else if (state is ProductSuccessState) {
            List<ProductModel> products = state.products;

            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: productCategories.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 12,
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            if (index == 0) {
                              setState(() {
                                products = state.products;
                              });
                            } else {
                              setState(() {
                                products =
                                    state.products
                                        .where(
                                          (e) =>
                                              e.category ==
                                              productCategories[index],
                                        )
                                        .toList();
                              });
                            }
                          },
                          child: Text(productCategories[index]),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return ListTile(
                        leading: CachedNetworkImage(
                          imageUrl: product.image,
                          placeholder:
                              (context, url) =>
                                  const CircularProgressIndicator(),
                          errorWidget:
                              (context, url, error) => const Icon(Icons.error),
                        ),
                        title: Text(product.title),
                        subtitle: Text('\$${product.price}'),
                        trailing: BlocBuilder<CartBloc, CartState>(
                          builder: (context, state) {
                            if (state is CartSuccessState) {
                              final cartProducts =
                                  context.read<CartBloc>().carts;
                              final cartQuantity =
                                  cartProducts
                                      .where((e) => e.productId == product.id)
                                      .map((e) => e.quantity)
                                      .firstOrNull ??
                                  0;

                              if (cartQuantity > 0) {
                                return Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        context.read<CartBloc>().add(
                                          AddToCartEvent(
                                            userId: 1,
                                            cartProductModel: CartProductModel(
                                              productId: product.id,
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
                                              productId: product.id,
                                              quantity: cartQuantity + 1,
                                            ),
                                          ),
                                        );
                                      },
                                      icon: Icon(Icons.add),
                                    ),
                                  ],
                                );
                              } else {
                                return IconButton(
                                  onPressed: () {
                                    context.read<CartBloc>().add(
                                      AddToCartEvent(
                                        userId: 1,
                                        cartProductModel: CartProductModel(
                                          productId: product.id,
                                          quantity: 1,
                                        ),
                                      ),
                                    );
                                  },
                                  icon: Icon(Icons.add_shopping_cart),
                                );
                              }
                            } else {
                              return const SizedBox();
                            }
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
