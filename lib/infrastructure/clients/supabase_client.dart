import 'package:supabase_flutter/supabase_flutter.dart';

/// Wrapper class cho Supabase client
///
/// Dễ dàng inject vào các class khác qua dependency injection
/// và dễ mock cho testing.
class AppSupabaseClient {
  /// Constructor nhận SupabaseClient instance
  const AppSupabaseClient(this._client);

  final SupabaseClient _client;

  /// Access đến SupabaseClient instance
  SupabaseClient get client => _client;

  /// Shortcut để access auth
  GoTrueClient get auth => _client.auth;

  /// Shortcut để access storage
  SupabaseStorageClient get storage => _client.storage;

  /// Shortcut để query table
  SupabaseQueryBuilder from(String table) => _client.from(table);

  /// Shortcut để gọi RPC function
  PostgrestFilterBuilder<T> rpc<T>(String fn, {Map<String, dynamic>? params}) =>
      _client.rpc(fn, params: params);

  /// Shortcut để listen realtime channel
  RealtimeChannel channel(String name) => _client.channel(name);
}
