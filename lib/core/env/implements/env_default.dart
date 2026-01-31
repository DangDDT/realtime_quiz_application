import 'package:realtime_quiz_app/core/env/env_collection.dart';
import 'package:realtime_quiz_app/core/env/env_key.dart';

final class EnvDefault extends EnvCollection {
  @override
  String get supabaseUrl => const String.fromEnvironment(EnvKey.supabaseUrl);

  @override
  String get supabaseAnonKey =>
      const String.fromEnvironment(EnvKey.supabaseAnonKey);
}
