import 'package:githun_api_commits/features/github/commits/domain/entities/commits/commits_entitie.dart';

abstract class CommitRepository {
  Future<List<Commit>> getCommits(String userName, String repo, String branch);
}
