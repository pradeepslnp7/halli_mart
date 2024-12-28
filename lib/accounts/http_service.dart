import 'package:dio/dio.dart';
import 'package:halli_mart/accounts/interceptor.dart';

class HttpService {
  final Dio _dio;

  HttpService() : _dio = Dio() {
    _dio.interceptors.add(DioInterceptor());
  }

  /// GET Method
  Future<Response> get(String endpoint,
      {Map<String, dynamic>? queryParams}) async {
    try {
      final response = await _dio.get(endpoint, queryParameters: queryParams);
      return response;
    } catch (e) {
      throw Exception("Failed to GET data: $e");
    }
  }

  /// POST Method
  Future<Response> post(String endpoint, {Map<String, dynamic>? data}) async {
    try {
      final response = await _dio.post(endpoint, data: data);
      return response;
    } catch (e) {
      throw Exception("Failed to POST data: $e");
    }
  }

  /// PUT Method
  Future<Response> put(String endpoint, {Map<String, dynamic>? data}) async {
    try {
      final response = await _dio.put(endpoint, data: data);
      return response;
    } catch (e) {
      throw Exception("Failed to PUT data: $e");
    }
  }

  /// DELETE Method
  Future<Response> delete(String endpoint, {Map<String, dynamic>? data}) async {
    try {
      final response = await _dio.delete(endpoint, data: data);
      return response;
    } catch (e) {
      throw Exception("Failed to DELETE data: $e");
    }
  }
}
