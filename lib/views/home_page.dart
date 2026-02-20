import 'package:cached_network_image/cached_network_image.dart';
import 'package:fakestore/blocs/cart_bloc/cart_bloc.dart';
import 'package:fakestore/blocs/product_bloc/product_bloc.dart';
import 'package:fakestore/constants/product_categories.dart';
import 'package:fakestore/models/cart_model.dart';
import 'package:fakestore/models/product_model.dart';
import 'package:fakestore/views/product_detail_page.dart';
import 'package:fakestore/widget/app_drawer.dart';
import 'package:fakestore/widget/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Keeping your existing state-based filtering logic as requested
  String selectedCategory = "All";
  bool isSearching = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isSearching ? null : const Text('Store'),
        centerTitle: true,
        actions: [
          !isSearching
              ? IconButton(
                onPressed: () {
                  setState(() {
                    isSearching = !isSearching;
                  });
                },
                icon: Icon(Icons.search),
              )
              : AnimatedContainer(
                width: MediaQuery.of(context).size.width * 0.8,
                duration: const Duration(milliseconds: 300),
                child: TextField(
                  onChanged: (value) {
                    context.read<ProductBloc>().add(
                      FilterProductsEvent(searchTerm: value),
                    );
                  },
                  autofocus: true,
                  decoration:  InputDecoration(
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        isSearching = false;
                      });
                      context.read<ProductBloc>().add(FilterProductsEvent(searchTerm: ""));
                    }, icon: Icon(Icons.clear)),
                    hintText: "Search products...",
                  ),
                ),
              ),
        ],
      ),
      drawer: AppDrawer(),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          if (state is ProductLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ProductErrorState) {
            return Center(child: Text('Error: ${state.message}'));
          } else if (state is ProductSuccessState) {
            // Using your products list logic
            final displayProducts = state.products;

            return RefreshIndicator(
              onRefresh: () async {
                context.read<ProductBloc>().add(
                  GetProductsByCategory(category: selectedCategory),
                );
              },
              child: Column(
                children: [
                  // Category List (Horizontal)
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: productCategories.length,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 4.0,
                            vertical: 10,
                          ),
                          child: ActionChip(
                            side: BorderSide(
                              color: selectedCategory ==
                                      productCategories[index]
                                  ? Theme.of(context).colorScheme.primary
                                  : Theme.of(context).colorScheme.secondary,
                            ),
                            label: Text(productCategories[index].toTitle()),
                            onPressed: () {
                              selectedCategory = productCategories[index];
                              context.read<ProductBloc>().add(
                                GetProductsByCategory(
                                  category: productCategories[index],
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  // Product Grid (Replaced ListView for better UI)
                  Expanded(
                    child: GridView.builder(
                      padding: const EdgeInsets.all(12),
                      gridDelegate:
                           SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: MediaQuery.sizeOf(context).width>800 ? 4 : 2,
                            childAspectRatio: 0.7,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                          ),
                      itemCount: displayProducts.length,
                      itemBuilder: (context, index) {
                        final product = displayProducts[index];
                        return Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: InkWell(
                            onTap:
                                () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => ProductDetailPage(
                                          productModel: ProductModel(
                                            id: displayProducts[index].id,
                                            title: displayProducts[index].title,
                                            price: displayProducts[index].price,
                                            description:
                                                displayProducts[index]
                                                    .description,
                                            category:
                                                displayProducts[index].category,
                                            image: displayProducts[index].image,
                                          ),
                                        ),
                                  ),
                                ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Image Section
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.vertical(
                                        top: Radius.circular(12),
                                      ),
                                    ),
                                    child: CachedNetworkImage(
                                      imageUrl: product.image,
                                      fit: BoxFit.contain,
                                      placeholder:
                                          (context, url) => const Center(
                                            child: CircularProgressIndicator(),
                                          ),
                                      errorWidget:
                                          (context, url, error) =>
                                              const Icon(Icons.error),
                                    ),
                                  ),
                                ),
                                // Details & Add to Cart Section
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        product.title,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '\$${product.price}',
                                            style: const TextStyle(
                                              color: Colors.green,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          // Your existing Cart Bloc Logic preserved
                                          BlocBuilder<CartBloc, CartState>(
                                            builder: (context, cartState) {
                                              if (cartState
                                                  is CartSuccessState) {
                                                final cartProducts =
                                                    context
                                                        .read<CartBloc>()
                                                        .carts;
                                                final cartQuantity =
                                                    cartProducts
                                                        .where(
                                                          (e) =>
                                                              e.productId ==
                                                              product.id,
                                                        )
                                                        .map((e) => e.quantity)
                                                        .firstOrNull ??
                                                    0;

                                                return cartQuantity > 0
                                                    ? CircleAvatar(
                                                      radius: 14,
                                                      backgroundColor:
                                                          Colors.blue,
                                                      child: Text(
                                                        '$cartQuantity',
                                                        style: const TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    )
                                                    : IconButton(
                                                      constraints:
                                                          const BoxConstraints(),
                                                      padding: EdgeInsets.zero,
                                                      icon: const Icon(
                                                        Icons.add_shopping_cart,
                                                        size: 20,
                                                        color: Colors.blue,
                                                      ),
                                                      onPressed: () {
                                                        context.read<CartBloc>().add(
                                                          AddToCartEvent(
                                                            userId: 1,
                                                            cartProductModel:
                                                                CartProductModel(
                                                                  productId:
                                                                      product
                                                                          .id,
                                                                  quantity: 1,
                                                                ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                              }
                                              return const SizedBox();
                                            },
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
