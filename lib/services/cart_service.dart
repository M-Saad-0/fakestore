import 'package:dio/dio.dart';
import 'package:fakestore/constants/api_url.dart';
import 'package:fakestore/models/cart_model.dart';
import 'package:fakestore/models/result.dart';

class CartService {
  final _dio = Dio();
  final cartUrl = "$url/carts";

  Future<Result<bool, String>> addToCart(
    int userId,
    CartProductModel cartProductModel,
  ) async {
    try {
      final response = await _dio.post(
        cartUrl,

        data: {
          "userId": userId,
          "date": DateTime.now().toIso8601String(),
          "products": [cartProductModel.toJson()],
        },
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return Result.succeed(true);
      }
      return Result.failed("Failed to add: ${response.statusCode}");
    } on DioException catch (e) {
      return Result.failed(e.message ?? "Network Error");
    } catch (e) {
      return Result.failed(e.toString());
    }
  }

  Future<Result<List<CartModel>, String>> getCart(int userId) async {
    try {
      final response = await _dio.get(cartUrl);

      if (response.data != null) {
        final List data = response.data;
        //print("userId: $userId, ");
        final cartList =
            data
                .map((e) {
                  //print("userId: ${e['userId']}, cartId: ${e['id']}");
                  return CartModel.fromJson(Map<String, dynamic>.from(e));
                })
                .toList();

        return Result.succeed(cartList.where((cart) => cart.userId == userId).toList());
      }
      return Result.failed("No cart data found");
    } on DioException catch (e) {
      return Result.failed(e.message ?? "Network Error");
    } catch (e) {
      return Result.failed(e.toString());
    }
  }
}
