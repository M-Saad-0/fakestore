import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:fakestore/constants/api_url.dart';
import 'package:fakestore/models/result.dart';
import 'package:fakestore/models/user_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService {
  static const loginEndPoint = "$url/auth/login";
  final secureStorage = const FlutterSecureStorage();
  final _dio = Dio();

  Future<Result<String, String>> login({
    required String username,
    required String password,
  }) async {
    try {
      final response = await _dio.post(
        loginEndPoint,

        data: {"username": username, "password": password},
      );

      if (response.data != null && response.data['token'] != null) {
        final String token = response.data['token'];
        return Result.succeed(token);
      }

      return Result.failed("Invalid credentials or server error");
    } on DioException catch (e) {
      String error = "An unexpected network error occurred";
      if (e.type == DioExceptionType.connectionError) {
        error = "No Internet Connection";
      }
      if (e.response?.statusCode == 401) error = "Invalid username or password";

      return Result.failed(error);
    } catch (e) {
      return Result.failed(e.toString());
    }
  }

  Future<int?> storeSession(String token) async {
    final userId = getUserIdFromToken(token);
    await secureStorage.write(key: 'token', value: token);
    if (userId != null) {
      return userId;
    }
    return null;
  }

  Future<void> logout() async {
    await secureStorage.deleteAll();
  }

  Future<UserModel?> checkifLoggedIn() async {
    final token = await secureStorage.read(key: 'token');
    final userString = await secureStorage.read(key: "userInfo");

    if (token != null && userString != null) {
      final Map<String, dynamic> userInfo = json.decode(userString);
      return UserModel.fromJson(userInfo);
    }
    return null;
  }

  int? getUserIdFromToken(String token) {
    try {
      final parts = token.split('.');
      if (parts.length != 3) return null;

      String payload = parts[1];
      payload = payload.replaceAll('-', '+').replaceAll('_', '/');

      while (payload.length % 4 != 0) {
        payload += '=';
      }

      final String decodedStr = utf8.decode(base64.decode(payload));
      final Map<String, dynamic> jsonPayload = json.decode(decodedStr);

      return jsonPayload['sub'];
    } catch (e) {
      return null;
    }
  }

  Future<Result<UserModel, String>> getUserInfo(int userId) async {
    final dio = Dio();
    try {
      final response = await dio.get("$url/users/$userId");
      if (response.data != null) {
        final user = UserModel.fromJson(response.data);
        await secureStorage.write(
          key: "userInfo",
          value: jsonEncode(response.data),
        );
        return Result.succeed(user);
      }

      return Result.failed("Failed to fetch user info");
    } on DioException catch (e) {
      return Result.failed(e.message ?? "Network Error");
    } catch (e) {
      return Result.failed(e.toString());
    }
  }
}
