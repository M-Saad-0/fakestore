import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fakestore/constants/api_url.dart';
import 'package:fakestore/models/cart_model.dart';
import 'package:fakestore/models/result.dart';

class CartService {
  final cartUrl = "$url/carts";
  Future<void> addToCart(int userId, CartProductModel cartProductModel) async {
    final dio = Dio();
    final response = await dio.post(
      cartUrl,
      data: jsonEncode({
        "userId": userId,
        "date": DateTime.now().toIso8601String(),
        "products": cartProductModel.toJson(),
      }),
    );
    final code = response.statusCode ?? 0;
    if (code >= 200 && code < 300) {
      print("Product added to cart successfully");
    } else {
      print("Failed to add product to cart: ${code}");
    }
  }

  Future<Result<List<CartModel>, String>> getCart(int userId) async {
    final dio = Dio();
    final response = await dio.get("$cartUrl/user/$userId");
    final code = response.statusCode ?? 0;
    if (code >= 200 && code < 300) {
      final jsonResponse = jsonDecode(response.data);
      return Result.succeed((jsonResponse as List)
          .map((e) => CartModel.fromJson(e as Map<String, dynamic>))
          .toList());
    } else {
      print("Failed to fetch cart: ${code}");
      return Result.failed("Failed to fetch cart: ${code}");
    }
  }
}
