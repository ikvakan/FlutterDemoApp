import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_onboarding/core/exceptions/dio_exception.dart';
import 'package:flutter_onboarding/presentation/screens/cubit/post_state.dart';

extension FutureExtension<T> on Future<T> {
  Future<void> invoke({
    required Function(T) onSuccess,
    required Function(Exception) onError,
    Function(UiStatus)? onProgressChanged,
    VoidCallback? onComplete,
  }) async {
    try {
      onProgressChanged?.call(UiStatus.loading);
      final result = await this;
      onSuccess(result);
      onProgressChanged?.call(UiStatus.success);
    } on Exception catch (e) {
      onProgressChanged?.call(UiStatus.failure);
      switch (e.runtimeType) {
        case DioError:
          onError(Exception(DioException.fromDioError(e as DioError)));
          break;
        default:
          onError(e);
      }
    } catch (e) {
      onProgressChanged?.call(UiStatus.failure);
      if (e is StateError) {
        onError(Exception(e.toString()));
      } else {
        rethrow;
      }
    } finally {
      onComplete?.call();
    }
  }
}
