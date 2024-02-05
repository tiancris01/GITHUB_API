import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';

import 'package:githun_api_commits/shared/data/model/api_response.dart';
import 'package:githun_api_commits/shared/data/remote/networkService/network_service.dart';

mixin ExceptionHandlerMixin on NetworkService {
  Future<ApiResponse> handleException<T extends Object>(
      Future<Response<dynamic>> Function() handler,
      {String endpoint = ''}) async {
    try {
      final res = await handler();
      return ApiResponse(
        code: res.statusCode ?? 200,
        data: res.data,
        message: res.statusMessage ?? '',
      );
    } catch (e) {
      log('Error in $endpoint: $e');
      if (e is DioError) {
        if (e.error is SocketException) {
          return const ApiResponse(
            code: 500,
            data: null,
            message: 'No internet connection',
          );
        }
        return ApiResponse(
          code: e.response?.statusCode ?? 500,
          data: e.response?.data,
          message: e.response?.statusMessage ?? 'Unknown error',
        );
      }
      return const ApiResponse(
        code: 500,
        data: null,
        message: 'Unknown error',
      );
    }
  }
}
