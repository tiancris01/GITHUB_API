import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:githun_api_commits/app/config/config_dev.dart';
import 'package:githun_api_commits/app/config/config_prod.dart';
import 'package:githun_api_commits/app/gen/assets.gen.dart';
import 'package:githun_api_commits/app/types/base_config.dart';
import 'package:githun_api_commits/app/types/env_type.dart';

class Environment {
  static final Environment _instance = Environment._internal();
  factory Environment() => _instance;

  Environment._internal();

  static late BaseConfig config;

  Future<void> initConfig({required EnvType env}) async {
    config = await _getConfig(kReleaseMode ? EnvType.prod : env);
  }

  Future<BaseConfig> _getConfig(EnvType environment) async {
    switch (environment) {
      case EnvType.dev:
        await dotenv.load(fileName: AssetsToken.env.envDev);
        return ConfigDev();
      case EnvType.prod:
        await dotenv.load(fileName: AssetsToken.env.envProd);
        return ConfigProd();
    }
  }
}
