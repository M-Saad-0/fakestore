import "dart:convert";

import "package:dio/dio.dart";
import "package:fakestore/constants/api_url.dart";
import "package:fakestore/models/product_model.dart";
import "package:fakestore/models/result.dart";

class ProductService {
  final productUrl = "$url/products";
  final productByCategoryUrl = "$url/products/category";
  Future<Result<List<ProductModel>, String>> getProducts({
    String category = "All",
  }) async {
    final dio = Dio();
    try {
      final Response response;
      if (category == "All") {
        response = await dio.get(productUrl);
      } else {
        response = await dio.get("$productByCategoryUrl/$category");
      }

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        final jsonResponse = jsonDecode(response.data);
        final products =
            (jsonResponse as List).map((e) {
              return ProductModel.fromJson(
                ((e as Map).map((k, v) => MapEntry(k as String, v as dynamic))),
              );
            }).toList();
        return Result.succeed(products);
      }
      if (response.statusCode! >= 400 && response.statusCode! < 500) {
        return Result.failed("Bad request found");
      } else {
        return Result.failed("Unknown Error Occured!");
      }
    } on DioException catch (e) {
      return Result.failed(e.message ?? "An unexpected network error occurred");
    } catch (e) {
      return Result.failed(e.toString());
    } catch (e) {
      return Result.failed("An unexpected error occurred: $e");
    }
  }
}
