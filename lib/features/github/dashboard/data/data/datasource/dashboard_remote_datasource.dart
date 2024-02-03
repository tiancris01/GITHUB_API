import 'package:dartz/dartz.dart';

import 'package:githun_api_commits/features/github/core/data/dtos/branches/repo_branches_dto.dart';
import 'package:githun_api_commits/features/github/core/data/dtos/repos/github_repos_dto.dart';
import 'package:githun_api_commits/shared/data/model/exceptions/http_exception.dart';
import 'package:githun_api_commits/shared/data/remote/networkService/network_service.dart';

abstract class DashboardDataSource {
  Future<Either<AppException, List<ReposDTO>>> getUserRepos(
      {required String userName});

  Future<Either<AppException, List<RepoBranchesDTO>>> getRepoBranches({
    required String userName,
    required String repoName,
  });
}

class DashboardRemoteDataSource implements DashboardDataSource {
  final NetworkService _networkService;
  DashboardRemoteDataSource({
    required NetworkService networkService,
  }) : _networkService = networkService;

  @override
  Future<Either<AppException, List<RepoBranchesDTO>>> getRepoBranches(
      {required String userName, required String repoName}) async {
    final response = await _networkService.get(
      '/repos/$userName/$repoName/branches',
    );
    return response.fold(
      (l) => Left(l),
      (r) {
        final jsonData = r.data;
        if (jsonData == null) {
          return const Left(
            AppException(
              identifier: 'search PaginatedData',
              statusCode: 0,
              message: 'The data is not in the valid format.',
            ),
          );
        }
        final List<RepoBranchesDTO> repos = [];
        for (var item in jsonData) {
          repos.add(RepoBranchesDTO.fromJson(item));
        }
        return Right(repos);
      },
    );
  }

  @override
  Future<Either<AppException, List<ReposDTO>>> getUserRepos(
      {required String userName}) async {
    final response = await _networkService.get(
      '/users/$userName/repos',
    );

    return response.fold(
      (l) => Left(l),
      (r) {
        final jsonData = r.data;
        if (jsonData == null) {
          return const Left(
            AppException(
              identifier: 'search PaginatedData',
              statusCode: 0,
              message: 'The data is not in the valid format.',
            ),
          );
        }
        final List<ReposDTO> repos = [];
        for (var item in jsonData) {
          repos.add(ReposDTO.fromJson(item));
        }
        return Right(repos);
      },
    );
  }
}
