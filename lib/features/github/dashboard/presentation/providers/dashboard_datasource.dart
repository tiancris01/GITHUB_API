import 'package:githun_api_commits/features/github/dashboard/data/data/datasource/dashboard_remote_datasource.dart';
import 'package:githun_api_commits/shared/data/remote/networkService/network_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dashboard_datasource.g.dart';

@riverpod
DashboardDataSource dashboardDatasource(
    DashboardDatasourceRef ref, NetworkService networkService) {
  return DashboardRemoteDataSource(networkService: networkService);
}
