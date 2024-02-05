import 'package:githun_api_commits/features/github/core/domain/entities/branches/repo_branches.dart';
import 'package:githun_api_commits/features/github/core/domain/entities/repos/github_repos.dart';

abstract class DashboardRepository {
  Future<List<GithubRepos>> getUserRepos({required String userName});

  Future<List<RepoBranches>> getRepoBranches({
    required String userName,
    required String repoName,
  });
}
