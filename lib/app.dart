import 'package:flutter/material.dart';
import 'package:githun_api_commits/routes/app_route.dart';

class GithubApp extends StatelessWidget {
  GithubApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Github Commits',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
