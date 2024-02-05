import 'package:githun_api_commits/features/github/core/domain/entities/branches/repo_branches.dart';
import 'package:githun_api_commits/features/github/core/domain/entities/repos/github_repos.dart';
import 'package:githun_api_commits/features/github/dashboard/data/data/datasource/dashboard_remote_datasource.dart';
import 'package:githun_api_commits/features/github/dashboard/domain/repository/dashboard_repository.dart';

class DashboardRepositoryImpl implements DashboardRepository {
  final DashboardDataSource _dashboardDataSource;
  DashboardRepositoryImpl({
    required DashboardDataSource dashboardDataSource,
  }) : _dashboardDataSource = dashboardDataSource;

  @override
  Future<List<RepoBranches>> getRepoBranches(
      {required String userName, required String repoName}) async {
    final result = await _dashboardDataSource.getRepoBranches(
      userName: userName,
      repoName: repoName,
    );
    final List<RepoBranches> branches = [];
    for (var item in result) {
      branches.add(item.toDomain());
    }
    return branches;
  }

  @override
  Future<List<GithubRepos>> getUserRepos({required String userName}) async {
    final result = await _dashboardDataSource.getUserRepos(
      userName: userName,
    );
    final List<GithubRepos> repos = [];
    for (var item in result) {
      repos.add(item.toDomain());
    }
    return repos;
  }
}
