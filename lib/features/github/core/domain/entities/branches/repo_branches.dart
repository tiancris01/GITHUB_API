import 'package:freezed_annotation/freezed_annotation.dart';

part 'repo_branches.freezed.dart';

@freezed
class RepoBranches with _$RepoBranches {
  const RepoBranches._();
  const factory RepoBranches({
    required String branchName,
  }) = _RepoBranches;
}
