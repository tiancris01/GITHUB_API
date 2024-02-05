import 'package:githun_api_commits/features/github/commits/data/datasource/remote/commit_remote_data_source.dart';
import 'package:githun_api_commits/shared/data/remote/networkService/network_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'commits_repository_provider.g.dart';

@riverpod
CommitDataSource commitDataSource(
    CommitDataSourceRef ref, NetworkService networkService) {
  return CommitRemoteDataSource(networkService: networkService);
}
