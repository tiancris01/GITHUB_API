import 'package:dartz/dartz.dart';
import 'package:githun_api_commits/features/github/core/data/dtos/branches/repo_branches_dto.dart';
import 'package:githun_api_commits/features/github/core/data/dtos/repos/github_repos_dto.dart';
import 'package:githun_api_commits/shared/exceptions/http_exception.dart';

abstract class DashboardRepository {
  Future<Either<AppException, List<ReposDTO>>> getUserRepos(
      {required String userName});

  Future<Either<AppException, List<RepoBranchesDTO>>> getRepoBranches({
    required String userName,
    required String repoName,
  });
}
