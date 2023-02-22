import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class HttpServices {
  static final HttpServices _instance = HttpServices._internal();
  factory HttpServices() => _instance;
  HttpServices._internal();

  Dio? _dio;

  final Duration _connectionTimeout = const Duration(seconds: 60);

  Map<String, String> headers = {
    'content-type': 'application/json',
    'accept': 'application/json',
    'language': 'en',
  };

  Dio getInstance() {
    _dio ??= Dio(
      BaseOptions(
        // baseUrl: "",
        connectTimeout: _connectionTimeout,
        receiveTimeout: _connectionTimeout,
        headers: headers,
      ),
    );
    _dio!.interceptors.add(PrettyDioLogger(
        requestHeader: true, requestBody: true, responseHeader: true));
    return _dio!;
  }
}
