import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:githun_api_commits/app/types/base_config.dart';

class ConfigProd extends BaseConfig {
  @override
  String get environment => dotenv.env['ENVIRONMENT'] ?? '';

  @override
  bool get bannerVisibility =>
      dotenv.env['BANNER_VISIBILITY']?.contains("true") == true;

  @override
  String get apiBaseUrl => dotenv.env['API_BASE_URL'] ?? '';
}
