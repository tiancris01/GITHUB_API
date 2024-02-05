import 'package:githun_api_commits/features/github/commits/data/dtos/commits_dto.dart';
import 'package:githun_api_commits/shared/data/remote/networkService/network_service.dart';

abstract class CommitDataSource {
  Future<List<CommitsDTO>> getCommits(
      String userName, String repo, String branch);
}

class CommitRemoteDataSource implements CommitDataSource {
  final NetworkService _networkService;
  CommitRemoteDataSource({
    required NetworkService networkService,
  }) : _networkService = networkService;

  @override
  Future<List<CommitsDTO>> getCommits(
      String userName, String repo, String branch) async {
    final response = await _networkService.get(
      '/repos/$userName/$repo/commits',
      queryParameters: {
        'sha': branch,
      },
    );
    final jsonData = response.data;
    if (jsonData != null || jsonData.isNotEmpty) {
      final List<CommitsDTO> repos = [];
      for (var item in jsonData) {
        repos.add(CommitsDTO.fromJson(item));
      }
      return repos;
    }
    return const [];
  }
}
