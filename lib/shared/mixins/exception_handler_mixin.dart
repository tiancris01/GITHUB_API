import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';

import 'package:dartz/dartz.dart';
import 'package:githun_api_commits/shared/data/model/api_response.dart';
import 'package:githun_api_commits/shared/data/model/exceptions/http_exception.dart';
import 'package:githun_api_commits/shared/data/remote/networkService/network_service.dart';

mixin ExceptionHandlerMixin on NetworkService {
  Future<Either<AppException, ApiResponse>> handleException<T extends Object>(
      Future<Response<dynamic>> Function() handler,
      {String endpoint = ''}) async {
    try {
      final res = await handler();
      return Right(
        ApiResponse(
          code: res.statusCode ?? 200,
          data: res.data,
          message: res.statusMessage ?? '',
        ),
      );
    } catch (e) {
      String message = '';
      String identifier = '';
      int statusCode = 0;
      log(e.runtimeType.toString());
      switch (e.runtimeType) {
        case SocketException:
          e as SocketException;
          message = 'Unable to connect to the server.';
          statusCode = 0;
          identifier = 'Socket Exception ${e.message}\n at  $endpoint';
          break;

        case DioException:
          e as DioException;
          message = e.response?.data?['message'] ?? 'Internal Error occurred';
          statusCode = 1;
          identifier = 'DioException ${e.message} \nat  $endpoint';
          break;

        default:
          message = 'Unknown error occurred';
          statusCode = 2;
          identifier = 'Unknown error ${e.toString()}\n at $endpoint';
      }
      return Left(
        AppException(
          message: message,
          statusCode: statusCode,
          identifier: identifier,
        ),
      );
    }
  }
}
