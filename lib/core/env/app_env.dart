import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:realtime_quiz_app/core/env/env_collection.dart';
import 'package:realtime_quiz_app/core/env/env_key.dart';

/// Application environment configuration enum.
///
/// This enum defines all available environment variables that can be configured
/// for different build flavors (development, staging, production) or through
/// Firebase Remote Config.
///
/// To add a new environment variable:
/// 1. Add it to this enum with appropriate key and type
/// 2. Add corresponding getter to [EnvCollection] abstract class
/// 3. Implement the getter in all concrete implementations:
///    - [EnvDefault] (fallback/common configuration)
///    - [EnvRemoteConfigs] (Firebase Remote Config override)
enum AppEnv {
  supabaseUrl(EnvKey.supabaseUrl),
  supabaseAnonKey(EnvKey.supabaseAnonKey);

  /// Creates an [AppEnv] with the specified remote config key and value type
  // ignore: unused_element_parameter
  const AppEnv(this.key, {this.type = String});

  /// The key used for Firebase Remote Config or local configuration storage
  final String key;

  /// The expected data type of this configuration value
  final Type type;
}

/// Extension providing convenient access methods for [AppEnv] values
extension BaseEnvX on AppEnv {
  /// Get the environment value for this enum from the current context.
  ///
  /// This is a shortcut for `context.read<EnvCollection>().getValue<T>(this)`
  ///
  /// Example usage:
  /// ```dart
  /// final isSSLPinningEnabled = AppEnv.enableSSLPinning.of<bool>(context);
  /// final sampleValue = AppEnv.sample.of<int>(context);
  /// ```
  ///
  /// Returns the configured value of type [T] for this environment variable.
  T valueOf<T>(BuildContext context) {
    return context.read<EnvCollection>().getValue<T>(this);
  }
}
