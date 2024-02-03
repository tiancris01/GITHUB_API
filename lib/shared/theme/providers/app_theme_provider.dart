import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_theme_provider.g.dart';

@riverpod
class AppThemes extends _$AppThemes {
  @override
  bool build() => false;

  void toggleTheme() {
    state = !state;
  }
}
