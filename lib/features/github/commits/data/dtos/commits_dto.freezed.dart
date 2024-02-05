// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commits_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthorDto _$AuthorDtoFromJson(Map<String, dynamic> json) {
  return _AuthorDto.fromJson(json);
}

/// @nodoc
mixin _$AuthorDto {
// ignore: invalid_annotation_target
  @JsonKey(name: 'avatar_url')
  String get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorDtoCopyWith<AuthorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorDtoCopyWith<$Res> {
  factory $AuthorDtoCopyWith(AuthorDto value, $Res Function(AuthorDto) then) =
      _$AuthorDtoCopyWithImpl<$Res, AuthorDto>;
  @useResult
  $Res call({@JsonKey(name: 'avatar_url') String avatarUrl});
}

/// @nodoc
class _$AuthorDtoCopyWithImpl<$Res, $Val extends AuthorDto>
    implements $AuthorDtoCopyWith<$Res> {
  _$AuthorDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarUrl = null,
  }) {
    return _then(_value.copyWith(
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthorDtoImplCopyWith<$Res>
    implements $AuthorDtoCopyWith<$Res> {
  factory _$$AuthorDtoImplCopyWith(
          _$AuthorDtoImpl value, $Res Function(_$AuthorDtoImpl) then) =
      __$$AuthorDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'avatar_url') String avatarUrl});
}

/// @nodoc
class __$$AuthorDtoImplCopyWithImpl<$Res>
    extends _$AuthorDtoCopyWithImpl<$Res, _$AuthorDtoImpl>
    implements _$$AuthorDtoImplCopyWith<$Res> {
  __$$AuthorDtoImplCopyWithImpl(
      _$AuthorDtoImpl _value, $Res Function(_$AuthorDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarUrl = null,
  }) {
    return _then(_$AuthorDtoImpl(
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthorDtoImpl extends _AuthorDto {
  const _$AuthorDtoImpl({@JsonKey(name: 'avatar_url') required this.avatarUrl})
      : super._();

  factory _$AuthorDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorDtoImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;

  @override
  String toString() {
    return 'AuthorDto(avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorDtoImpl &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, avatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorDtoImplCopyWith<_$AuthorDtoImpl> get copyWith =>
      __$$AuthorDtoImplCopyWithImpl<_$AuthorDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorDtoImplToJson(
      this,
    );
  }
}

abstract class _AuthorDto extends AuthorDto {
  const factory _AuthorDto(
          {@JsonKey(name: 'avatar_url') required final String avatarUrl}) =
      _$AuthorDtoImpl;
  const _AuthorDto._() : super._();

  factory _AuthorDto.fromJson(Map<String, dynamic> json) =
      _$AuthorDtoImpl.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'avatar_url')
  String get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$AuthorDtoImplCopyWith<_$AuthorDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommitAuthorDTO _$CommitAuthorDTOFromJson(Map<String, dynamic> json) {
  return _CommitAuthorDTO.fromJson(json);
}

/// @nodoc
mixin _$CommitAuthorDTO {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommitAuthorDTOCopyWith<CommitAuthorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitAuthorDTOCopyWith<$Res> {
  factory $CommitAuthorDTOCopyWith(
          CommitAuthorDTO value, $Res Function(CommitAuthorDTO) then) =
      _$CommitAuthorDTOCopyWithImpl<$Res, CommitAuthorDTO>;
  @useResult
  $Res call({String name, String email, String date});
}

/// @nodoc
class _$CommitAuthorDTOCopyWithImpl<$Res, $Val extends CommitAuthorDTO>
    implements $CommitAuthorDTOCopyWith<$Res> {
  _$CommitAuthorDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommitAuthorDTOImplCopyWith<$Res>
    implements $CommitAuthorDTOCopyWith<$Res> {
  factory _$$CommitAuthorDTOImplCopyWith(_$CommitAuthorDTOImpl value,
          $Res Function(_$CommitAuthorDTOImpl) then) =
      __$$CommitAuthorDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String date});
}

/// @nodoc
class __$$CommitAuthorDTOImplCopyWithImpl<$Res>
    extends _$CommitAuthorDTOCopyWithImpl<$Res, _$CommitAuthorDTOImpl>
    implements _$$CommitAuthorDTOImplCopyWith<$Res> {
  __$$CommitAuthorDTOImplCopyWithImpl(
      _$CommitAuthorDTOImpl _value, $Res Function(_$CommitAuthorDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? date = null,
  }) {
    return _then(_$CommitAuthorDTOImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommitAuthorDTOImpl extends _CommitAuthorDTO {
  const _$CommitAuthorDTOImpl(
      {required this.name, required this.email, required this.date})
      : super._();

  factory _$CommitAuthorDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommitAuthorDTOImplFromJson(json);

  @override
  final String name;
  @override
  final String email;
  @override
  final String date;

  @override
  String toString() {
    return 'CommitAuthorDTO(name: $name, email: $email, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommitAuthorDTOImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, email, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommitAuthorDTOImplCopyWith<_$CommitAuthorDTOImpl> get copyWith =>
      __$$CommitAuthorDTOImplCopyWithImpl<_$CommitAuthorDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommitAuthorDTOImplToJson(
      this,
    );
  }
}

abstract class _CommitAuthorDTO extends CommitAuthorDTO {
  const factory _CommitAuthorDTO(
      {required final String name,
      required final String email,
      required final String date}) = _$CommitAuthorDTOImpl;
  const _CommitAuthorDTO._() : super._();

  factory _CommitAuthorDTO.fromJson(Map<String, dynamic> json) =
      _$CommitAuthorDTOImpl.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$CommitAuthorDTOImplCopyWith<_$CommitAuthorDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommitsDTO _$CommitsDTOFromJson(Map<String, dynamic> json) {
  return _CommitsDTO.fromJson(json);
}

/// @nodoc
mixin _$CommitsDTO {
  CommitAuthorDTO? get commitAuthor => throw _privateConstructorUsedError;
  AuthorDto get author => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommitsDTOCopyWith<CommitsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitsDTOCopyWith<$Res> {
  factory $CommitsDTOCopyWith(
          CommitsDTO value, $Res Function(CommitsDTO) then) =
      _$CommitsDTOCopyWithImpl<$Res, CommitsDTO>;
  @useResult
  $Res call({CommitAuthorDTO? commitAuthor, AuthorDto author, String message});

  $CommitAuthorDTOCopyWith<$Res>? get commitAuthor;
  $AuthorDtoCopyWith<$Res> get author;
}

/// @nodoc
class _$CommitsDTOCopyWithImpl<$Res, $Val extends CommitsDTO>
    implements $CommitsDTOCopyWith<$Res> {
  _$CommitsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commitAuthor = freezed,
    Object? author = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      commitAuthor: freezed == commitAuthor
          ? _value.commitAuthor
          : commitAuthor // ignore: cast_nullable_to_non_nullable
              as CommitAuthorDTO?,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as AuthorDto,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommitAuthorDTOCopyWith<$Res>? get commitAuthor {
    if (_value.commitAuthor == null) {
      return null;
    }

    return $CommitAuthorDTOCopyWith<$Res>(_value.commitAuthor!, (value) {
      return _then(_value.copyWith(commitAuthor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorDtoCopyWith<$Res> get author {
    return $AuthorDtoCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommitsDTOImplCopyWith<$Res>
    implements $CommitsDTOCopyWith<$Res> {
  factory _$$CommitsDTOImplCopyWith(
          _$CommitsDTOImpl value, $Res Function(_$CommitsDTOImpl) then) =
      __$$CommitsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommitAuthorDTO? commitAuthor, AuthorDto author, String message});

  @override
  $CommitAuthorDTOCopyWith<$Res>? get commitAuthor;
  @override
  $AuthorDtoCopyWith<$Res> get author;
}

/// @nodoc
class __$$CommitsDTOImplCopyWithImpl<$Res>
    extends _$CommitsDTOCopyWithImpl<$Res, _$CommitsDTOImpl>
    implements _$$CommitsDTOImplCopyWith<$Res> {
  __$$CommitsDTOImplCopyWithImpl(
      _$CommitsDTOImpl _value, $Res Function(_$CommitsDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commitAuthor = freezed,
    Object? author = null,
    Object? message = null,
  }) {
    return _then(_$CommitsDTOImpl(
      commitAuthor: freezed == commitAuthor
          ? _value.commitAuthor
          : commitAuthor // ignore: cast_nullable_to_non_nullable
              as CommitAuthorDTO?,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as AuthorDto,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommitsDTOImpl extends _CommitsDTO {
  const _$CommitsDTOImpl(
      {required this.commitAuthor, required this.author, required this.message})
      : super._();

  factory _$CommitsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommitsDTOImplFromJson(json);

  @override
  final CommitAuthorDTO? commitAuthor;
  @override
  final AuthorDto author;
  @override
  final String message;

  @override
  String toString() {
    return 'CommitsDTO(commitAuthor: $commitAuthor, author: $author, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommitsDTOImpl &&
            (identical(other.commitAuthor, commitAuthor) ||
                other.commitAuthor == commitAuthor) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, commitAuthor, author, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommitsDTOImplCopyWith<_$CommitsDTOImpl> get copyWith =>
      __$$CommitsDTOImplCopyWithImpl<_$CommitsDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommitsDTOImplToJson(
      this,
    );
  }
}

abstract class _CommitsDTO extends CommitsDTO {
  const factory _CommitsDTO(
      {required final CommitAuthorDTO? commitAuthor,
      required final AuthorDto author,
      required final String message}) = _$CommitsDTOImpl;
  const _CommitsDTO._() : super._();

  factory _CommitsDTO.fromJson(Map<String, dynamic> json) =
      _$CommitsDTOImpl.fromJson;

  @override
  CommitAuthorDTO? get commitAuthor;
  @override
  AuthorDto get author;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$CommitsDTOImplCopyWith<_$CommitsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
