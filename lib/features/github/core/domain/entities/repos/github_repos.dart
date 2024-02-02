import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_repos.freezed.dart';

@freezed
class GithubRepos with _$GithubRepos {
  const GithubRepos._();
  const factory GithubRepos() = _GithubRepos;
}
