import 'package:githun_api_commits/features/github/dashboard/data/repository/dashboard_repository_impl.dart';
import 'package:githun_api_commits/features/github/dashboard/domain/repository/dashboard_repository.dart';
import 'package:githun_api_commits/features/github/dashboard/presentation/providers/dashboard_datasource.dart';
import 'package:githun_api_commits/shared/domain/providers/dio_network_service_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'deshboar_repository.g.dart';

@riverpod
DashboardRepository deshboardRepository(DeshboardRepositoryRef ref) {
  final networkService = ref.watch(dioNetworkServiceRefProvider);
  final datasource = ref.watch(dashboardDatasourceProvider(networkService));
  final repository = DashboardRepositoryImpl(dashboardDataSource: datasource);
  return repository;
}
