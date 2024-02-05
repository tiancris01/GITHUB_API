// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commits_entitie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Commit {
  CommitAutor? get commiAuthor => throw _privateConstructorUsedError;
  Author get author => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommitCopyWith<Commit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitCopyWith<$Res> {
  factory $CommitCopyWith(Commit value, $Res Function(Commit) then) =
      _$CommitCopyWithImpl<$Res, Commit>;
  @useResult
  $Res call({CommitAutor? commiAuthor, Author author, String message});

  $CommitAutorCopyWith<$Res>? get commiAuthor;
  $AuthorCopyWith<$Res> get author;
}

/// @nodoc
class _$CommitCopyWithImpl<$Res, $Val extends Commit>
    implements $CommitCopyWith<$Res> {
  _$CommitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commiAuthor = freezed,
    Object? author = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      commiAuthor: freezed == commiAuthor
          ? _value.commiAuthor
          : commiAuthor // ignore: cast_nullable_to_non_nullable
              as CommitAutor?,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommitAutorCopyWith<$Res>? get commiAuthor {
    if (_value.commiAuthor == null) {
      return null;
    }

    return $CommitAutorCopyWith<$Res>(_value.commiAuthor!, (value) {
      return _then(_value.copyWith(commiAuthor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthorCopyWith<$Res> get author {
    return $AuthorCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommitsImplCopyWith<$Res> implements $CommitCopyWith<$Res> {
  factory _$$CommitsImplCopyWith(
          _$CommitsImpl value, $Res Function(_$CommitsImpl) then) =
      __$$CommitsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommitAutor? commiAuthor, Author author, String message});

  @override
  $CommitAutorCopyWith<$Res>? get commiAuthor;
  @override
  $AuthorCopyWith<$Res> get author;
}

/// @nodoc
class __$$CommitsImplCopyWithImpl<$Res>
    extends _$CommitCopyWithImpl<$Res, _$CommitsImpl>
    implements _$$CommitsImplCopyWith<$Res> {
  __$$CommitsImplCopyWithImpl(
      _$CommitsImpl _value, $Res Function(_$CommitsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commiAuthor = freezed,
    Object? author = null,
    Object? message = null,
  }) {
    return _then(_$CommitsImpl(
      commiAuthor: freezed == commiAuthor
          ? _value.commiAuthor
          : commiAuthor // ignore: cast_nullable_to_non_nullable
              as CommitAutor?,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as Author,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommitsImpl extends _Commits {
  const _$CommitsImpl(
      {required this.commiAuthor, required this.author, required this.message})
      : super._();

  @override
  final CommitAutor? commiAuthor;
  @override
  final Author author;
  @override
  final String message;

  @override
  String toString() {
    return 'Commit(commiAuthor: $commiAuthor, author: $author, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommitsImpl &&
            (identical(other.commiAuthor, commiAuthor) ||
                other.commiAuthor == commiAuthor) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commiAuthor, author, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommitsImplCopyWith<_$CommitsImpl> get copyWith =>
      __$$CommitsImplCopyWithImpl<_$CommitsImpl>(this, _$identity);
}

abstract class _Commits extends Commit {
  const factory _Commits(
      {required final CommitAutor? commiAuthor,
      required final Author author,
      required final String message}) = _$CommitsImpl;
  const _Commits._() : super._();

  @override
  CommitAutor? get commiAuthor;
  @override
  Author get author;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$CommitsImplCopyWith<_$CommitsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommitAutor {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommitAutorCopyWith<CommitAutor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommitAutorCopyWith<$Res> {
  factory $CommitAutorCopyWith(
          CommitAutor value, $Res Function(CommitAutor) then) =
      _$CommitAutorCopyWithImpl<$Res, CommitAutor>;
  @useResult
  $Res call({String name, String email, String date});
}

/// @nodoc
class _$CommitAutorCopyWithImpl<$Res, $Val extends CommitAutor>
    implements $CommitAutorCopyWith<$Res> {
  _$CommitAutorCopyWithImpl(this._value, this._then);

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
abstract class _$$commitAutorImplCopyWith<$Res>
    implements $CommitAutorCopyWith<$Res> {
  factory _$$commitAutorImplCopyWith(
          _$commitAutorImpl value, $Res Function(_$commitAutorImpl) then) =
      __$$commitAutorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String date});
}

/// @nodoc
class __$$commitAutorImplCopyWithImpl<$Res>
    extends _$CommitAutorCopyWithImpl<$Res, _$commitAutorImpl>
    implements _$$commitAutorImplCopyWith<$Res> {
  __$$commitAutorImplCopyWithImpl(
      _$commitAutorImpl _value, $Res Function(_$commitAutorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? date = null,
  }) {
    return _then(_$commitAutorImpl(
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

class _$commitAutorImpl extends _commitAutor {
  const _$commitAutorImpl(
      {required this.name, required this.email, required this.date})
      : super._();

  @override
  final String name;
  @override
  final String email;
  @override
  final String date;

  @override
  String toString() {
    return 'CommitAutor(name: $name, email: $email, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$commitAutorImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$commitAutorImplCopyWith<_$commitAutorImpl> get copyWith =>
      __$$commitAutorImplCopyWithImpl<_$commitAutorImpl>(this, _$identity);
}

abstract class _commitAutor extends CommitAutor {
  const factory _commitAutor(
      {required final String name,
      required final String email,
      required final String date}) = _$commitAutorImpl;
  const _commitAutor._() : super._();

  @override
  String get name;
  @override
  String get email;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$commitAutorImplCopyWith<_$commitAutorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Author {
  String get avatarUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthorCopyWith<Author> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorCopyWith<$Res> {
  factory $AuthorCopyWith(Author value, $Res Function(Author) then) =
      _$AuthorCopyWithImpl<$Res, Author>;
  @useResult
  $Res call({String avatarUrl});
}

/// @nodoc
class _$AuthorCopyWithImpl<$Res, $Val extends Author>
    implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._value, this._then);

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
abstract class _$$authorImplCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$$authorImplCopyWith(
          _$authorImpl value, $Res Function(_$authorImpl) then) =
      __$$authorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String avatarUrl});
}

/// @nodoc
class __$$authorImplCopyWithImpl<$Res>
    extends _$AuthorCopyWithImpl<$Res, _$authorImpl>
    implements _$$authorImplCopyWith<$Res> {
  __$$authorImplCopyWithImpl(
      _$authorImpl _value, $Res Function(_$authorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatarUrl = null,
  }) {
    return _then(_$authorImpl(
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$authorImpl extends _author {
  const _$authorImpl({required this.avatarUrl}) : super._();

  @override
  final String avatarUrl;

  @override
  String toString() {
    return 'Author(avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$authorImpl &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, avatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$authorImplCopyWith<_$authorImpl> get copyWith =>
      __$$authorImplCopyWithImpl<_$authorImpl>(this, _$identity);
}

abstract class _author extends Author {
  const factory _author({required final String avatarUrl}) = _$authorImpl;
  const _author._() : super._();

  @override
  String get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$authorImplCopyWith<_$authorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
