import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:githun_api_commits/features/github/core/domain/entities/branches/repo_branches.dart';

part 'repo_branches_dto.freezed.dart';
part 'repo_branches_dto.g.dart';

@freezed
class RepoBranchesDTO with _$RepoBranchesDTO {
  const RepoBranchesDTO._();
  const factory RepoBranchesDTO({
    required String name,
  }) = _RepoBranchesDTO;

  factory RepoBranchesDTO.fromJson(Map<String, dynamic> json) =>
      _$RepoBranchesDTOFromJson(json);

  factory RepoBranchesDTO.fromDomain(RepoBranches repos) {
    return RepoBranchesDTO(
      name: repos.branchName,
    );
  }

  RepoBranches toDomain() {
    return RepoBranches(
      branchName: name,
    );
  }
}
