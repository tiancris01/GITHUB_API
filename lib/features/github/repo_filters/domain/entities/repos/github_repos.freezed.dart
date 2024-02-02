// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GithubRepos {
  String get repoName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GithubReposCopyWith<GithubRepos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GithubReposCopyWith<$Res> {
  factory $GithubReposCopyWith(
          GithubRepos value, $Res Function(GithubRepos) then) =
      _$GithubReposCopyWithImpl<$Res, GithubRepos>;
  @useResult
  $Res call({String repoName});
}

/// @nodoc
class _$GithubReposCopyWithImpl<$Res, $Val extends GithubRepos>
    implements $GithubReposCopyWith<$Res> {
  _$GithubReposCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repoName = null,
  }) {
    return _then(_value.copyWith(
      repoName: null == repoName
          ? _value.repoName
          : repoName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GithubReposImplCopyWith<$Res>
    implements $GithubReposCopyWith<$Res> {
  factory _$$GithubReposImplCopyWith(
          _$GithubReposImpl value, $Res Function(_$GithubReposImpl) then) =
      __$$GithubReposImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String repoName});
}

/// @nodoc
class __$$GithubReposImplCopyWithImpl<$Res>
    extends _$GithubReposCopyWithImpl<$Res, _$GithubReposImpl>
    implements _$$GithubReposImplCopyWith<$Res> {
  __$$GithubReposImplCopyWithImpl(
      _$GithubReposImpl _value, $Res Function(_$GithubReposImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repoName = null,
  }) {
    return _then(_$GithubReposImpl(
      repoName: null == repoName
          ? _value.repoName
          : repoName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GithubReposImpl extends _GithubRepos {
  const _$GithubReposImpl({required this.repoName}) : super._();

  @override
  final String repoName;

  @override
  String toString() {
    return 'GithubRepos(repoName: $repoName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GithubReposImpl &&
            (identical(other.repoName, repoName) ||
                other.repoName == repoName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, repoName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GithubReposImplCopyWith<_$GithubReposImpl> get copyWith =>
      __$$GithubReposImplCopyWithImpl<_$GithubReposImpl>(this, _$identity);
}

abstract class _GithubRepos extends GithubRepos {
  const factory _GithubRepos({required final String repoName}) =
      _$GithubReposImpl;
  const _GithubRepos._() : super._();

  @override
  String get repoName;
  @override
  @JsonKey(ignore: true)
  _$$GithubReposImplCopyWith<_$GithubReposImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
