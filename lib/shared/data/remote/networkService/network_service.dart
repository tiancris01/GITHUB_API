import 'package:dartz/dartz.dart';
import 'package:githun_api_commits/shared/domain/model/api_response.dart';
import 'package:githun_api_commits/shared/exceptions/http_exception.dart';

abstract class NetworkService {
  String get baseUrl;

  Map<String, Object> get headers;

  void updateHeader(Map<String, dynamic> data);

  Future<Either<AppException, ApiResponse>> get(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  });

  Future<Either<AppException, ApiResponse>> post(
    String endpoint, {
    Map<String, dynamic>? data,
  });
}
