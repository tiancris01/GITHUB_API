// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_branches_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepoBranchesDTO _$RepoBranchesDTOFromJson(Map<String, dynamic> json) {
  return _RepoBranchesDTO.fromJson(json);
}

/// @nodoc
mixin _$RepoBranchesDTO {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepoBranchesDTOCopyWith<RepoBranchesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoBranchesDTOCopyWith<$Res> {
  factory $RepoBranchesDTOCopyWith(
          RepoBranchesDTO value, $Res Function(RepoBranchesDTO) then) =
      _$RepoBranchesDTOCopyWithImpl<$Res, RepoBranchesDTO>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$RepoBranchesDTOCopyWithImpl<$Res, $Val extends RepoBranchesDTO>
    implements $RepoBranchesDTOCopyWith<$Res> {
  _$RepoBranchesDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$RepoBranchesDTOImplCopyWith<$Res>
    implements $RepoBranchesDTOCopyWith<$Res> {
  factory _$$RepoBranchesDTOImplCopyWith(_$RepoBranchesDTOImpl value,
          $Res Function(_$RepoBranchesDTOImpl) then) =
      __$$RepoBranchesDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$RepoBranchesDTOImplCopyWithImpl<$Res>
    extends _$RepoBranchesDTOCopyWithImpl<$Res, _$RepoBranchesDTOImpl>
    implements _$$RepoBranchesDTOImplCopyWith<$Res> {
  __$$RepoBranchesDTOImplCopyWithImpl(
      _$RepoBranchesDTOImpl _value, $Res Function(_$RepoBranchesDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$RepoBranchesDTOImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepoBranchesDTOImpl extends _RepoBranchesDTO {
  const _$RepoBranchesDTOImpl({required this.name}) : super._();

  factory _$RepoBranchesDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepoBranchesDTOImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'RepoBranchesDTO(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepoBranchesDTOImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepoBranchesDTOImplCopyWith<_$RepoBranchesDTOImpl> get copyWith =>
      __$$RepoBranchesDTOImplCopyWithImpl<_$RepoBranchesDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepoBranchesDTOImplToJson(
      this,
    );
  }
}

abstract class _RepoBranchesDTO extends RepoBranchesDTO {
  const factory _RepoBranchesDTO({required final String name}) =
      _$RepoBranchesDTOImpl;
  const _RepoBranchesDTO._() : super._();

  factory _RepoBranchesDTO.fromJson(Map<String, dynamic> json) =
      _$RepoBranchesDTOImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$RepoBranchesDTOImplCopyWith<_$RepoBranchesDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
