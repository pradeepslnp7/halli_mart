import 'package:dio/dio.dart';

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Add headers or log the request
    print("Request [${options.method}] => PATH: ${options.path}");
    options.headers['Authorization'] = 'Bearer your_token_here'; // Example
    return handler.next(options); // Continue the request
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // Handle the response globally
    print("Response [${response.statusCode}] => DATA: ${response.data}");
    return handler.next(response); // Continue the response
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // Handle errors globally
    print("Error [${err.response?.statusCode}] => MESSAGE: ${err.message}");
    if (err.response?.statusCode == 401) {
      print("Unauthorized! Handle token refresh here.");
    }
    return handler.next(err); // Continue the error
  }
}
