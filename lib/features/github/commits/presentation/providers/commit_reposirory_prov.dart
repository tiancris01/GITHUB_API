import 'package:githun_api_commits/features/github/commits/data/repository/commit_repository_impl.dart';
import 'package:githun_api_commits/features/github/commits/domain/repository/commit_repository.dart';
import 'package:githun_api_commits/features/github/commits/presentation/providers/commits_datasource.dart';
import 'package:githun_api_commits/shared/domain/providers/dio_network_service_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'commit_reposirory_riv.g.dart';

@riverpod
CommitRepository commitRepository(CommitRepositoryRef ref) {
  final networkService = ref.watch(dioNetworkServiceRefProvider);
  final datasource = ref.watch(commitDataSourceProvider(networkService));
  return CommitRepositoryImpl(
    remoteDataSource: datasource,
  );
}
