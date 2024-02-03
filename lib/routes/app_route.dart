import 'package:auto_route/auto_route.dart';
import 'package:githun_api_commits/features/exports.dart';

part 'app_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: DashboardRoute.page),
      ];
}
