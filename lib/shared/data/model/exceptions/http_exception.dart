import 'package:freezed_annotation/freezed_annotation.dart';

part 'http_exception.freezed.dart';

@freezed
class AppException with _$AppException {
  const AppException._();
  const factory AppException({
    required String message,
    required int statusCode,
    required String identifier,
  }) = _AppException;
}
