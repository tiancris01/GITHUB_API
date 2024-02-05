import 'package:githun_api_commits/features/github/commits/domain/entities/commits/commits_entitie.dart';

abstract class CommitRepository {
  Future<List<CommitEntitie>> getCommits(
      String userName, String repo, String branch);
}
