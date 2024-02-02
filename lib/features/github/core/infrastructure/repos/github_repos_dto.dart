import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:githun_api_commits/features/github/core/domain/entities/repos/github_repos.dart';

part 'github_repos_dto.freezed.dart';
part 'github_repos_dto.g.dart';

@freezed
class ReposDTO with _$ReposDTO {
  const ReposDTO._();
  const factory ReposDTO({
    required String name,
  }) = _ReposDTO;

  factory ReposDTO.fromJson(Map<String, dynamic> json) =>
      _$ReposDTOFromJson(json);

  factory ReposDTO.fromDomain(GithubRepos repos) {
    return ReposDTO(
      name: repos.repoName,
    );
  }

  GithubRepos toDomain() {
    return GithubRepos(
      repoName: name,
    );
  }
}
