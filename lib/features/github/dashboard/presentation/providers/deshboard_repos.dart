import 'package:githun_api_commits/features/github/core/domain/entities/repos/github_repos.dart';
import 'package:githun_api_commits/features/github/dashboard/presentation/providers/deshboar_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'deshboard_repos.g.dart';

@riverpod
Future<List<GithubRepos>> dashboardRepos(
    DashboardReposRef ref, String username) async {
  final repository = ref.watch(deshboardRepositoryProvider);
  final result = await repository.getUserRepos(userName: username);
  return result;
}
