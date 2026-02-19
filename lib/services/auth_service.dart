import 'dart:convert';
import 'dart:io';

import 'package:fakestore/constants/api_url.dart';
import 'package:fakestore/models/result.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService {
  static const loginEndPoint = "$url/auth/login";
  final secureStorage = FlutterSecureStorage();
  Future<Result<String, String>> login({
    required String username,
    required String password,
  }) async {
    final dio = Dio();
    try {
      final response = await dio.post(
        loginEndPoint,
        options: Options(
          headers: {
            HttpHeaders.contentTypeHeader: 'application/json',
          },
        ),
        data: jsonEncode({"username": username, "password": password}),
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        final token = response.data['token'];
        return Result.succeed(token);
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
    }
  }

  void secureToken(String token) async {
    await secureStorage.write(key: 'token', value: token);
  }

  Future<void> logout() async {
    await secureStorage.delete(key: 'token');
  }

  Future<int> checkifLoggedIn() async {
    String? token = await secureStorage.read(key: 'token');
    int? userId = int.tryParse(await secureStorage.read(key: "userId") ?? "");
    return (token != null && userId != null) ? userId : -1;
  }

  Future<int> getAndStoreUserId(String token) async {
    final userId = getUserIdFromToken(token);
    secureStorage.write(key: "userId", value: (userId ?? -1).toString());
    return userId ?? -1;
  }

  int? getUserIdFromToken(String token) {
    try {
      final parts = token.split('.');
      if (parts.length != 3) {
        throw Exception('Invalid token');
      }

      String payload = parts[1];

      payload = payload.replaceAll('-', '+').replaceAll('_', '/');

      switch (payload.length % 4) {
        case 0:
          break;
        case 2:
          payload += '==';
          break;
        case 3:
          payload += '=';
          break;
        default:
          throw Exception('Illegal base64 string');
      }

      final String decodedStr = utf8.decode(base64.decode(payload));

      final Map<String, dynamic> jsonPayload = json.decode(decodedStr);

      return jsonPayload['sub'];
    } catch (e) {
      print('Error decoding token: $e');
      return null;
    }
  }
}
