import 'package:realtime_quiz_app/core/di/locator.dart';
import 'package:realtime_quiz_app/core/utils/helpers/app_repository_error_helper.dart';
import 'package:realtime_quiz_app/domain/entities/auth_user.dart';
import 'package:realtime_quiz_app/domain/models/api_client_error_rethrow_x.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/repositories/auth_repository.dart';
import 'package:realtime_quiz_app/domain/services/logger_service.dart';
import 'package:realtime_quiz_app/infrastructure/clients/supabase_client.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AppSupabaseClient _supabaseClient;
  final LoggerService _logger;
  AuthRepositoryImpl({
    required AppSupabaseClient supabaseClient,
    LoggerService? logger,
  }) : _supabaseClient = supabaseClient,
       _logger = logger ?? sl.get<LoggerService>(param1: AuthRepositoryImpl);
  @override
  Future<AppResult<AuthUser>> login() async {
    return safeRepoFutureCall(() async {
      final user = _supabaseClient.auth.currentUser;
      if (user != null) {
        return AppResult.success(AuthUser(id: user.id));
      }
      final response = await _supabaseClient.auth
          .signInAnonymously()
          .rethrowsOnApiClientException(_logger);
      return AppResult.success(AuthUser(id: response.user?.id ?? ''));
    }, logger: _logger);
  }

  @override
  Future<AppResult<void>> logout() {
    return safeRepoFutureCall(() async {
      await _supabaseClient.auth.signOut().rethrowsOnApiClientException(
        _logger,
      );
      return AppResult.success(null);
    }, logger: _logger);
  }

  @override
  Future<AppResult<AuthUser?>> getCurrentUser() {
    return safeRepoFutureCall(() async {
      final user = _supabaseClient.auth.currentUser;
      if (user != null) {
        return AppResult.success(AuthUser(id: user.id));
      }
      return AppResult.success(null);
    }, logger: _logger);
  }
}
