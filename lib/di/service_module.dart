import 'package:dio/dio.dart';
import 'package:flutter_onboarding/constants/api.dart';
import 'package:flutter_onboarding/data/remote/interceptors/authorization_interceptor.dart';
import 'package:flutter_onboarding/data/remote/interceptors/logger_interceptor.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ServiceModule {
  @lazySingleton
  Dio get dio => Dio(
        BaseOptions(baseUrl: ApiConstants.baseUrl),
      )..interceptors.addAll(
          [LoggerInterceptor(), AuthorizationInterceptor()],
        );
}
