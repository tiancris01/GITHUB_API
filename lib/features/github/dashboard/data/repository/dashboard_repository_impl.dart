import 'package:dartz/dartz.dart';
import 'package:githun_api_commits/features/github/core/data/dtos/branches/repo_branches_dto.dart';
import 'package:githun_api_commits/features/github/core/data/dtos/repos/github_repos_dto.dart';
import 'package:githun_api_commits/features/github/dashboard/data/data/datasource/dashboard_remote_datasource.dart';
import 'package:githun_api_commits/features/github/dashboard/domain/repository/dashboard_repository.dart';
import 'package:githun_api_commits/shared/exceptions/http_exception.dart';

class DashboardRepositoryImpl implements DashboardRepository {
  final DashboardDataSource _dashboardDataSource;
  DashboardRepositoryImpl({
    required DashboardDataSource dashboardDataSource,
  }) : _dashboardDataSource = dashboardDataSource;

  @override
  Future<Either<AppException, List<RepoBranchesDTO>>> getRepoBranches(
      {required String userName, required String repoName}) async {
    return _dashboardDataSource.getRepoBranches(
      userName: userName,
      repoName: repoName,
    );
  }

  @override
  Future<Either<AppException, List<ReposDTO>>> getUserRepos(
      {required String userName}) async {
    return _dashboardDataSource.getUserRepos(userName: userName);
  }
}
