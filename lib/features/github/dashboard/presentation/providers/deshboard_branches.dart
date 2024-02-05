import 'package:githun_api_commits/features/github/core/domain/entities/branches/repo_branches.dart';
import 'package:githun_api_commits/features/github/dashboard/presentation/providers/deshboar_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'deshboard_branches.g.dart';

@riverpod
Future<List<RepoBranches>> deshboarBranch(
    DeshboarBranchRef ref, String userName, String repo) async {
  final repository = ref.watch(deshboardRepositoryProvider);
  final result = await repository.getRepoBranches(
    userName: userName,
    repoName: repo,
  );
  return result;
}
