import 'dart:convert';

import 'package:fakestore/models/product_model.dart';

class CartModel {
  final int id;
  final int userId;
  final List<ProductModel> products;

  const CartModel({
    required this.id,
    required this.userId,
    required this.products,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) {
    return CartModel(
      id: json['id'],
      userId: json['userId'],
      products:
          (json['products'] as List)
              .map(
                (e) => ProductModel.fromJson(
                  (e as Map).map((k, v) => MapEntry(k as String, v as String)),
                ),
              )
              .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'products': products.map((e) => e.toJson()).toList(),
    };
  }
}
