// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'github_repos_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReposDTO _$ReposDTOFromJson(Map<String, dynamic> json) {
  return _ReposDTO.fromJson(json);
}

/// @nodoc
mixin _$ReposDTO {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReposDTOCopyWith<ReposDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReposDTOCopyWith<$Res> {
  factory $ReposDTOCopyWith(ReposDTO value, $Res Function(ReposDTO) then) =
      _$ReposDTOCopyWithImpl<$Res, ReposDTO>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$ReposDTOCopyWithImpl<$Res, $Val extends ReposDTO>
    implements $ReposDTOCopyWith<$Res> {
  _$ReposDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReposDTOImplCopyWith<$Res>
    implements $ReposDTOCopyWith<$Res> {
  factory _$$ReposDTOImplCopyWith(
          _$ReposDTOImpl value, $Res Function(_$ReposDTOImpl) then) =
      __$$ReposDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$ReposDTOImplCopyWithImpl<$Res>
    extends _$ReposDTOCopyWithImpl<$Res, _$ReposDTOImpl>
    implements _$$ReposDTOImplCopyWith<$Res> {
  __$$ReposDTOImplCopyWithImpl(
      _$ReposDTOImpl _value, $Res Function(_$ReposDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$ReposDTOImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReposDTOImpl extends _ReposDTO {
  const _$ReposDTOImpl({required this.name}) : super._();

  factory _$ReposDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReposDTOImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'ReposDTO(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReposDTOImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReposDTOImplCopyWith<_$ReposDTOImpl> get copyWith =>
      __$$ReposDTOImplCopyWithImpl<_$ReposDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReposDTOImplToJson(
      this,
    );
  }
}

abstract class _ReposDTO extends ReposDTO {
  const factory _ReposDTO({required final String name}) = _$ReposDTOImpl;
  const _ReposDTO._() : super._();

  factory _ReposDTO.fromJson(Map<String, dynamic> json) =
      _$ReposDTOImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ReposDTOImplCopyWith<_$ReposDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
