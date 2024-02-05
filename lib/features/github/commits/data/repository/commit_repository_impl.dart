import 'package:githun_api_commits/features/github/commits/data/datasource/remote/commit_remote_data_source.dart';
import 'package:githun_api_commits/features/github/commits/domain/entities/commits/commits_entitie.dart';
import 'package:githun_api_commits/features/github/commits/domain/repository/commit_repository.dart';

class CommitRepositoryImpl implements CommitRepository {
  final CommitDataSource remoteDataSource;

  CommitRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<Commit>> getCommits(
      String userName, String repo, String branch) async {
    final commits = await remoteDataSource.getCommits(userName, repo, branch);
    final List<Commit> commitsList = [];
    for (var item in commits) {
      commitsList.add(item.toDomain());
    }
    return commitsList;
  }
}
