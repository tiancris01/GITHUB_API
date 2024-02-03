import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:githun_api_commits/app/environments.dart';
import 'package:githun_api_commits/shared/data/model/api_response.dart';
import 'package:githun_api_commits/shared/data/model/exceptions/http_exception.dart';
import 'package:githun_api_commits/shared/data/remote/networkService/network_service.dart';
import 'package:githun_api_commits/shared/mixins/exception_handler_mixin.dart';

class DioNetworkService extends NetworkService with ExceptionHandlerMixin {
  final kTestMode = Platform.environment.containsKey('FLUTTER_TEST');
  final Dio dio;
  DioNetworkService(this.dio) {
    // this throws error while running test
    if (!kTestMode) {
      dio.options = dioBaseOptions;
      if (kDebugMode) {
        dio.interceptors
            .add(LogInterceptor(requestBody: true, responseBody: true));
      }
    }
  }

  BaseOptions get dioBaseOptions => BaseOptions(
        baseUrl: baseUrl,
        headers: headers,
      );
  @override
  String get baseUrl => Environment.config.apiBaseUrl;

  @override
  Map<String, Object> get headers => {
        'accept': 'application/vnd.github+json',
        'content-type': 'application/json',
      };

  @override
  Map<String, dynamic>? updateHeader(Map<String, dynamic> data) {
    final header = {...data, ...headers};
    if (!kTestMode) {
      dio.options.headers = header;
    }
    return header;
  }

  @override
  Future<Either<AppException, ApiResponse>> post(String endpoint,
      {Map<String, dynamic>? data}) {
    final res = handleException(
      () => dio.post(
        endpoint,
        data: data,
      ),
      endpoint: endpoint,
    );
    return res;
  }

  @override
  Future<Either<AppException, ApiResponse>> get(String endpoint,
      {Map<String, dynamic>? queryParameters}) {
    final res = handleException(
      () => dio.get(
        endpoint,
        queryParameters: queryParameters,
      ),
      endpoint: endpoint,
    );
    return res;
  }
}
