import 'package:dio/dio.dart';
import 'package:flutter_onboarding/constants/api.dart';

class AuthorizationInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters["api_key"] = ApiConstants.apiKey;
    super.onRequest(options, handler);
  }
}
