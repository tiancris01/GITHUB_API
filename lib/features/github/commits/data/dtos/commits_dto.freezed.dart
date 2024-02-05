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

CommitDTO _$CommitDTOFromJson(Map<String, dynamic> json) {
  return _CommitDTO.fromJson(json);
}

/// @nodoc
mixin _$CommitDTO {
  CommitAuthorDTO get author => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommitDTOCopyWith<CommitDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitDTOCopyWith<$Res> {
  factory $CommitDTOCopyWith(CommitDTO value, $Res Function(CommitDTO) then) =
      _$CommitDTOCopyWithImpl<$Res, CommitDTO>;
  @useResult
  $Res call({CommitAuthorDTO author, String message});

  $CommitAuthorDTOCopyWith<$Res> get author;
}

/// @nodoc
class _$CommitDTOCopyWithImpl<$Res, $Val extends CommitDTO>
    implements $CommitDTOCopyWith<$Res> {
  _$CommitDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as CommitAuthorDTO,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommitAuthorDTOCopyWith<$Res> get author {
    return $CommitAuthorDTOCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommitDTOImplCopyWith<$Res>
    implements $CommitDTOCopyWith<$Res> {
  factory _$$CommitDTOImplCopyWith(
          _$CommitDTOImpl value, $Res Function(_$CommitDTOImpl) then) =
      __$$CommitDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommitAuthorDTO author, String message});

  @override
  $CommitAuthorDTOCopyWith<$Res> get author;
}

/// @nodoc
class __$$CommitDTOImplCopyWithImpl<$Res>
    extends _$CommitDTOCopyWithImpl<$Res, _$CommitDTOImpl>
    implements _$$CommitDTOImplCopyWith<$Res> {
  __$$CommitDTOImplCopyWithImpl(
      _$CommitDTOImpl _value, $Res Function(_$CommitDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? message = null,
  }) {
    return _then(_$CommitDTOImpl(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as CommitAuthorDTO,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommitDTOImpl extends _CommitDTO {
  const _$CommitDTOImpl({required this.author, required this.message})
      : super._();

  factory _$CommitDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommitDTOImplFromJson(json);

  @override
  final CommitAuthorDTO author;
  @override
  final String message;

  @override
  String toString() {
    return 'CommitDTO(author: $author, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommitDTOImpl &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, author, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommitDTOImplCopyWith<_$CommitDTOImpl> get copyWith =>
      __$$CommitDTOImplCopyWithImpl<_$CommitDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommitDTOImplToJson(
      this,
    );
  }
}

abstract class _CommitDTO extends CommitDTO {
  const factory _CommitDTO(
      {required final CommitAuthorDTO author,
      required final String message}) = _$CommitDTOImpl;
  const _CommitDTO._() : super._();

  factory _CommitDTO.fromJson(Map<String, dynamic> json) =
      _$CommitDTOImpl.fromJson;

  @override
  CommitAuthorDTO get author;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$CommitDTOImplCopyWith<_$CommitDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommitsDTO _$CommitsDTOFromJson(Map<String, dynamic> json) {
  return _CommitsDTO.fromJson(json);
}

/// @nodoc
mixin _$CommitsDTO {
  CommitDTO? get commit => throw _privateConstructorUsedError;
  AuthorDto get author => throw _privateConstructorUsedError;

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
  $Res call({CommitDTO? commit, AuthorDto author});

  $CommitDTOCopyWith<$Res>? get commit;
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
    Object? commit = freezed,
    Object? author = null,
  }) {
    return _then(_value.copyWith(
      commit: freezed == commit
          ? _value.commit
          : commit // ignore: cast_nullable_to_non_nullable
              as CommitDTO?,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as AuthorDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommitDTOCopyWith<$Res>? get commit {
    if (_value.commit == null) {
      return null;
    }

    return $CommitDTOCopyWith<$Res>(_value.commit!, (value) {
      return _then(_value.copyWith(commit: value) as $Val);
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
  $Res call({CommitDTO? commit, AuthorDto author});

  @override
  $CommitDTOCopyWith<$Res>? get commit;
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
    Object? commit = freezed,
    Object? author = null,
  }) {
    return _then(_$CommitsDTOImpl(
      commit: freezed == commit
          ? _value.commit
          : commit // ignore: cast_nullable_to_non_nullable
              as CommitDTO?,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as AuthorDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommitsDTOImpl extends _CommitsDTO {
  const _$CommitsDTOImpl({required this.commit, required this.author})
      : super._();

  factory _$CommitsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommitsDTOImplFromJson(json);

  @override
  final CommitDTO? commit;
  @override
  final AuthorDto author;

  @override
  String toString() {
    return 'CommitsDTO(commit: $commit, author: $author)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommitsDTOImpl &&
            (identical(other.commit, commit) || other.commit == commit) &&
            (identical(other.author, author) || other.author == author));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, commit, author);

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
      {required final CommitDTO? commit,
      required final AuthorDto author}) = _$CommitsDTOImpl;
  const _CommitsDTO._() : super._();

  factory _CommitsDTO.fromJson(Map<String, dynamic> json) =
      _$CommitsDTOImpl.fromJson;

  @override
  CommitDTO? get commit;
  @override
  AuthorDto get author;
  @override
  @JsonKey(ignore: true)
  _$$CommitsDTOImplCopyWith<_$CommitsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
