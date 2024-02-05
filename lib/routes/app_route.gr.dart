// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_route.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CommitRoute.name: (routeData) {
      final args = routeData.argsAs<CommitRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CommitScreen(
          userName: args.userName,
          repo: args.repo,
          branch: args.branch,
        ),
      );
    },
    DashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [CommitScreen]
class CommitRoute extends PageRouteInfo<CommitRouteArgs> {
  CommitRoute({
    required String userName,
    required String repo,
    required String branch,
    List<PageRouteInfo>? children,
  }) : super(
          CommitRoute.name,
          args: CommitRouteArgs(
            userName: userName,
            repo: repo,
            branch: branch,
          ),
          initialChildren: children,
        );

  static const String name = 'CommitRoute';

  static const PageInfo<CommitRouteArgs> page = PageInfo<CommitRouteArgs>(name);
}

class CommitRouteArgs {
  const CommitRouteArgs({
    required this.userName,
    required this.repo,
    required this.branch,
  });

  final String userName;

  final String repo;

  final String branch;

  @override
  String toString() {
    return 'CommitRouteArgs{userName: $userName, repo: $repo, branch: $branch}';
  }
}

/// generated route for
/// [DashboardScreen]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
