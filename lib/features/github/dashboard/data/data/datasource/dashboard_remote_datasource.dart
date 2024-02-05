import 'package:githun_api_commits/features/github/core/data/dtos/branches/repo_branches_dto.dart';
import 'package:githun_api_commits/features/github/core/data/dtos/repos/github_repos_dto.dart';
import 'package:githun_api_commits/shared/data/remote/networkService/network_service.dart';

abstract class DashboardDataSource {
  Future<List<ReposDTO>> getUserRepos({required String userName});

  Future<List<RepoBranchesDTO>> getRepoBranches({
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
  Future<List<RepoBranchesDTO>> getRepoBranches(
      {required String userName, required String repoName}) async {
    final response = await _networkService.get(
      '/repos/$userName/$repoName/branches',
    );
    final jsonData = response.data;
    if (jsonData != null || jsonData.isNotEmpty) {
      final List<RepoBranchesDTO> branches = [];
      for (var item in jsonData) {
        branches.add(RepoBranchesDTO.fromJson(item));
      }
      return branches;
    }
    return const [];
  }

  @override
  Future<List<ReposDTO>> getUserRepos({required String userName}) async {
    final response = await _networkService.get(
      '/users/$userName/repos',
    );
    final jsonData = response.data;
    if (jsonData != null || jsonData.isNotEmpty) {
      final List<ReposDTO> repos = [];
      for (var item in jsonData) {
        repos.add(ReposDTO.fromJson(item));
      }
      return repos;
    }
    return const [];
  }
}
