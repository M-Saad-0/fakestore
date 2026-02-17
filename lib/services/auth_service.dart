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
        data: jsonEncode({"username": username, "password": password}),
      );

      if (response.statusCode! >= 200 && response.statusCode! < 300) {
        final jsonResponse = jsonDecode(response.data);
        final token = jsonResponse['token'];
        return Result.succeed(token);
      }
      if (response.statusCode! >= 400 && response.statusCode! < 500) {
        return Result.succeed("Bad request found");
      } else {
        return Result.succeed("Unknown Error Occured!");
      }
    } catch (e) {
      return Result.succeed(e.toString());
    }
  }

  void secureToken(String token) async {
    await secureStorage.write(key: 'token', value: token);
  }

  void logout() async {
    await secureStorage.delete(key: 'token');
  }
}
