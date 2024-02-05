import 'package:githun_api_commits/features/github/commits/domain/entities/commits/commits_entitie.dart';
import 'package:githun_api_commits/features/github/commits/presentation/providers/commit_reposirory_prov.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'commit_prov.g.dart';

@riverpod
Future<List<CommitEntitie>> commit(
    CommitRef ref, String userName, String repo, String branch) async {
  final repository = ref.watch(commitRepositoryProvider);
  final result = await repository.getCommits(userName, repo, branch);
  return result;
}
