import 'package:dartz/dartz.dart';
import 'package:githun_api_commits/features/github/core/data/dtos/repos/github_repos_dto.dart';
import 'package:githun_api_commits/features/github/dashboard/presentation/providers/deshboar_repository.dart';
import 'package:githun_api_commits/shared/data/model/exceptions/http_exception.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'deshboard_repos.g.dart';

@riverpod
FutureOr<List<ReposDTO>> deshboardRepos(
    DeshboardReposRef ref, String username) async {
  final repository = ref.watch(deshboardRepositoryProvider);
  final result = await repository.getUserRepos(userName: username);
  return result.fold(
    (l) => throw l,
    (r) => r,
  );
}
