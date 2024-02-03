import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:githun_api_commits/app.dart';
import 'package:githun_api_commits/app/environments.dart';
import 'package:githun_api_commits/app/types/env_type.dart';

Future<void> main() => mainCommon(EnvType.dev);

Future<void> mainCommon(EnvType env) async {
  await Environment().initConfig(env: env);

  runApp(ProviderScope(child: GithubApp()));
}
