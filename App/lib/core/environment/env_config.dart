import 'base_env_config.dart';
import 'global_env_config.dart';
import 'newenvironment_env_config.dart';

enum Environment { newEnvironment, global }

class EnvConfig {
  late BaseEnvConfig config;

  initConfig({Environment? environment}) {
    config = _getConfig(environment ?? null);
  }

  _getConfig([Environment? environment]) {
    switch (environment) {
      case Environment.newEnvironment:
        return NewEnvironmentEnvConfig();
      case Environment.global:
        return GlobalEnvConfig();
      default:
        return NewEnvironmentEnvConfig();
    }
  }
}
