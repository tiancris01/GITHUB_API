// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repo_branches.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RepoBranches {
  String get branchName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepoBranchesCopyWith<RepoBranches> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepoBranchesCopyWith<$Res> {
  factory $RepoBranchesCopyWith(
          RepoBranches value, $Res Function(RepoBranches) then) =
      _$RepoBranchesCopyWithImpl<$Res, RepoBranches>;
  @useResult
  $Res call({String branchName});
}

/// @nodoc
class _$RepoBranchesCopyWithImpl<$Res, $Val extends RepoBranches>
    implements $RepoBranchesCopyWith<$Res> {
  _$RepoBranchesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branchName = null,
  }) {
    return _then(_value.copyWith(
      branchName: null == branchName
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepoBranchesImplCopyWith<$Res>
    implements $RepoBranchesCopyWith<$Res> {
  factory _$$RepoBranchesImplCopyWith(
          _$RepoBranchesImpl value, $Res Function(_$RepoBranchesImpl) then) =
      __$$RepoBranchesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String branchName});
}

/// @nodoc
class __$$RepoBranchesImplCopyWithImpl<$Res>
    extends _$RepoBranchesCopyWithImpl<$Res, _$RepoBranchesImpl>
    implements _$$RepoBranchesImplCopyWith<$Res> {
  __$$RepoBranchesImplCopyWithImpl(
      _$RepoBranchesImpl _value, $Res Function(_$RepoBranchesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? branchName = null,
  }) {
    return _then(_$RepoBranchesImpl(
      branchName: null == branchName
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RepoBranchesImpl extends _RepoBranches {
  const _$RepoBranchesImpl({required this.branchName}) : super._();

  @override
  final String branchName;

  @override
  String toString() {
    return 'RepoBranches(branchName: $branchName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepoBranchesImpl &&
            (identical(other.branchName, branchName) ||
                other.branchName == branchName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, branchName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepoBranchesImplCopyWith<_$RepoBranchesImpl> get copyWith =>
      __$$RepoBranchesImplCopyWithImpl<_$RepoBranchesImpl>(this, _$identity);
}

abstract class _RepoBranches extends RepoBranches {
  const factory _RepoBranches({required final String branchName}) =
      _$RepoBranchesImpl;
  const _RepoBranches._() : super._();

  @override
  String get branchName;
  @override
  @JsonKey(ignore: true)
  _$$RepoBranchesImplCopyWith<_$RepoBranchesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
