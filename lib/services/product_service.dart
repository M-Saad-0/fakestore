import "package:dio/dio.dart";
import "package:fakestore/constants/api_url.dart";
import "package:fakestore/models/product_model.dart";
import "package:fakestore/models/result.dart";

class ProductService {
  
  final Dio _dio = Dio();

  Future<Result<List<ProductModel>, String>> getProducts({
    String category = "All",
  }) async {
    try {
      final String requestUrl = (category == "All") 
          ? "$url/products" 
          : "$url/products/category/$category";

      final response = await _dio.get(requestUrl);

      
      
      
      if (response.data != null) {
        
        final List data = response.data; 
        
        final products = data.map((e) {
          return ProductModel.fromJson(Map<String, dynamic>.from(e));
        }).toList();

        return Result.succeed(products);
      }
      
      return Result.failed("Empty response from server");

    } on DioException catch (e) {
      
      if (e.response != null) {
        return Result.failed("Server Error: ${e.response?.statusCode}");
      }
      return Result.failed(e.message ?? "Network error occurred");
    } catch (e) {
      return Result.failed("Unexpected error: $e");
    }
  }
}