import 'package:realtime_quiz_app/domain/models/app_error.dart';
import 'package:realtime_quiz_app/domain/models/app_repository_exception.dart';
import 'package:realtime_quiz_app/domain/services/logger_service.dart';

/// {@template api_client_error_rethrow_x}
/// Extension to handle API client exceptions and rethrow as [RepositoryException].
/// {@endtemplate}
extension ApiClientErrorRethrowX<T> on Future<T> {
  /// {@macro api_client_error_rethrow_x}
  ///
  /// Catches [PostgrestException] and maps it to an appropriate [AppError]
  /// before wrapping it in a [RepositoryException.remote].
  ///
  /// Any other exceptions are logged and wrapped into [AppError.unknown]
  /// before being rethrown as [RepositoryException.remote].
  ///
  /// Example:
  /// ```dart
  /// Future<UserData> fetchUserData() {
  ///   return _apiClient.getUserData()
  ///     .rethrowsOnApiClientException(_logger);
  /// }
  /// ```
  Future<T> rethrowsOnApiClientException<X>(LoggerService logger) async {
    try {
      return await this;
    } catch (e, st) {
      logger.error(
        title: 'An unexpected error occurred during API client operation.',
        error: e,
        stackTrace: st,
      );
      throw AppRepositoryException.remote(
        AppError.unknown(
          message: 'An unexpected error occurred during API client operation.',
          cause: e,
        ),
      );
    }
  }
}
