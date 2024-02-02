import 'package:flutter/material.dart';
import 'package:githun_api_commits/app.dart';
import 'package:githun_api_commits/app/environments.dart';
import 'package:githun_api_commits/app/types/env_type.dart';

Future<void> main() async {
  await Environment().initConfig(env: EnvType.prod);

  runApp(const GithubApp());
}
