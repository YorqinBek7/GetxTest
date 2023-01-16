import 'package:dio/dio.dart';

class ApiClient {
  static Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.imgflip.com/',
      connectTimeout: 25000,
      receiveTimeout: 20000,
    ),
  );
}
