// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'http_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppException {
  String get message => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;
  String get identifier => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppExceptionCopyWith<AppException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppExceptionCopyWith<$Res> {
  factory $AppExceptionCopyWith(
          AppException value, $Res Function(AppException) then) =
      _$AppExceptionCopyWithImpl<$Res, AppException>;
  @useResult
  $Res call({String message, int statusCode, String identifier});
}

/// @nodoc
class _$AppExceptionCopyWithImpl<$Res, $Val extends AppException>
    implements $AppExceptionCopyWith<$Res> {
  _$AppExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
    Object? identifier = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppExceptionImplCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$AppExceptionImplCopyWith(
          _$AppExceptionImpl value, $Res Function(_$AppExceptionImpl) then) =
      __$$AppExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int statusCode, String identifier});
}

/// @nodoc
class __$$AppExceptionImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$AppExceptionImpl>
    implements _$$AppExceptionImplCopyWith<$Res> {
  __$$AppExceptionImplCopyWithImpl(
      _$AppExceptionImpl _value, $Res Function(_$AppExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? statusCode = null,
    Object? identifier = null,
  }) {
    return _then(_$AppExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AppExceptionImpl extends _AppException {
  const _$AppExceptionImpl(
      {required this.message,
      required this.statusCode,
      required this.identifier})
      : super._();

  @override
  final String message;
  @override
  final int statusCode;
  @override
  final String identifier;

  @override
  String toString() {
    return 'AppException(message: $message, statusCode: $statusCode, identifier: $identifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppExceptionImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, statusCode, identifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppExceptionImplCopyWith<_$AppExceptionImpl> get copyWith =>
      __$$AppExceptionImplCopyWithImpl<_$AppExceptionImpl>(this, _$identity);
}

abstract class _AppException extends AppException {
  const factory _AppException(
      {required final String message,
      required final int statusCode,
      required final String identifier}) = _$AppExceptionImpl;
  const _AppException._() : super._();

  @override
  String get message;
  @override
  int get statusCode;
  @override
  String get identifier;
  @override
  @JsonKey(ignore: true)
  _$$AppExceptionImplCopyWith<_$AppExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
