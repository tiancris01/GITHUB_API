import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:githun_api_commits/app/core/design/design.dart';
import 'package:githun_api_commits/routes/app_route.dart';
import 'package:githun_api_commits/shared/theme/providers/app_theme_provider.dart';

class GithubApp extends ConsumerWidget {
  GithubApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(appThemesProvider);
    return MaterialApp.router(
      title: 'Github Commits',
      theme: ThemeFoundation.lightTheme,
      darkTheme: ThemeFoundation.darkTheme,
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
