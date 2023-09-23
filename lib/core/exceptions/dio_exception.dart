import 'package:dio/dio.dart';
import 'package:flutter_onboarding/constants/error_message.dart';

class DioException implements Exception {
  late String errorMessage;

  DioException.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        errorMessage = ErrorMessages.serverRequestCanceled;
        break;
      case DioErrorType.connectionTimeout:
        errorMessage = ErrorMessages.connectionTimeout;
        break;
      case DioErrorType.receiveTimeout:
        errorMessage = ErrorMessages.receiveTimeout;
        break;
      case DioErrorType.sendTimeout:
        errorMessage = ErrorMessages.sendTimeout;
        break;
      case DioErrorType.badResponse:
        errorMessage = _handleStatusCode(dioError.response?.statusCode);
        break;
      case DioErrorType.connectionError:
        errorMessage = ErrorMessages.connectionError;
        break;
      default:
        errorMessage = ErrorMessages.defaultErrorMessage;
        break;
    }
  }

  String _handleStatusCode(int? statusCode) {
    switch (statusCode) {
      case 400:
        return ErrorMessages.statusCode400;
      case 401:
        return ErrorMessages.statusCode401;
      case 403:
        return ErrorMessages.statusCode403;
      case 404:
        return ErrorMessages.statusCode404;
      case 405:
        return ErrorMessages.statusCode405;
      case 415:
        return ErrorMessages.statusCode415;
      case 422:
        return ErrorMessages.statusCode422;
      case 429:
        return ErrorMessages.statusCode429;
      case 500:
        return ErrorMessages.statusCode500;
      default:
        return ErrorMessages.defaultErrorMessage;
    }
  }

  @override
  String toString() => errorMessage;
}
