import 'package:dio/dio.dart';
import 'package:githun_api_commits/shared/data/remote/networkService/dio_network_service.dart';
import 'package:githun_api_commits/shared/data/remote/networkService/network_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_network_service_provider.g.dart';

@riverpod
NetworkService dioNetworkServiceRef(DioNetworkServiceRefRef ref) {
  final Dio dio = Dio();
  return DioNetworkService(dio);
}
