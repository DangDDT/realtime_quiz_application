import 'package:flutter/foundation.dart';
import 'package:realtime_quiz_app/core/di/locator.dart';
import 'package:realtime_quiz_app/core/env/app_env.dart';
import 'package:realtime_quiz_app/domain/services/logger_service.dart';

abstract class EnvCollection {
  String get supabaseUrl;
  String get supabaseAnonKey;

  ///Key-value pair of [AppEnv] enum and its uri
  @nonVirtual
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    for (final item in AppEnv.values) {
      switch (item.type) {
        case const (int):
          map[item.key] = getValue<int>(item);
        case const (String):
          map[item.key] = getValue<String>(item);
        case const (bool):
          map[item.key] = getValue<bool>(item);
        default:
          throw UnimplementedError('${item.type} is not implemented');
      }
    }
    return map;
  }

  static void logAllValues(Map<String, dynamic> map) {
    final logger = sl.get<LoggerService>(param1: EnvCollection);
    logger.info(title: '📋 Environment Configuration Values:');
    logger.info(
      title: '╭─────────────────────────────────────────────────────────────╮',
    );

    for (final entry in map.entries) {
      final key = entry.key.padRight(30);
      final value = entry.value.toString();
      logger.info(title: '│ $key │ $value');
    }

    logger.info(
      title: '╰─────────────────────────────────────────────────────────────╯',
    );
  }

  ///Get value from [AppEnv] enum
  ///
  ///[T] is the type of the value to be returned
  @nonVirtual
  T getValue<T>(AppEnv appEnv) {
    return switch (appEnv) {
      AppEnv.supabaseUrl => supabaseUrl as T,
      AppEnv.supabaseAnonKey => supabaseAnonKey as T,
    };
  }
}
