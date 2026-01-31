import 'package:realtime_quiz_app/domain/models/app_error.dart';
import 'package:realtime_quiz_app/domain/models/app_repository_exception.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/services/logger_service.dart';
import 'package:rxdart/rxdart.dart';

/// A utility function for repositories to safely execute async operations
/// and wrap any thrown [AppError]s into an [AppResult.failure].
Future<AppResult<T>> safeRepoFutureCall<T, X>(
  Future<AppResult<T>> Function() call, {
  required LoggerService logger,
  String? errorMessage,
}) async {
  try {
    final result = await call();
    return result;
  } on AppRepositoryException catch (e, st) {
    logger.error(
      title: 'Repository operation failed',
      message: errorMessage != null
          ? '$errorMessage: $e'
          : 'Repository operation failed: $e',
      error: e,
      stackTrace: st,
    );
    return AppResult.failure(e.cause);
  } on Exception catch (e, st) {
    // This catches any unexpected errors (not AppError) that might escape
    // from data sources or other internal logic.
    final internalError = AppError.internal(
      message: errorMessage ?? 'An unexpected internal error occurred.',
      cause: e,
    );
    logger.error(
      title: 'CRITICAL: Unexpected exception in repository call',
      message: errorMessage ?? 'An unexpected internal error occurred.',
      error: internalError,
      stackTrace: st,
    );
    return AppResult.failure(internalError);
  } catch (e, st) {
    logger.error(
      title: 'An unexpected error occurred in repository call.',
      error: e,
      stackTrace: st,
    );
    return AppResult.failure(
      AppError.unknown(
        message: 'An unexpected error occurred in repository call.',
      ),
    );
  }
}

/// A utility function for repositories to safely execute stream operations
/// and wrap any thrown [AppError]s into an [AppResult.failure].
Stream<AppResult<T>> safeRepoStreamCall<T, X>(
  Stream<AppResult<T>> Function() call, {
  required LoggerService logger,
  String? errorMessage,
}) {
  return call().onErrorResume((Object error, StackTrace stackTrace) async* {
    if (error case AppRepositoryException(:final cause)) {
      logger.error(
        title: 'Repository operation failed',
        message: errorMessage != null
            ? '$errorMessage: $error'
            : 'Repository operation failed: $error',
        error: error,
        stackTrace: stackTrace,
      );
      yield AppResult.failure(cause);
    }
    logger.error(
      title: 'Repository operation failed',
      message: errorMessage != null
          ? '$errorMessage: $error'
          : 'Repository operation failed: $error',
      error: error,
      stackTrace: stackTrace,
    );
    yield AppResult.failure(
      AppError.internal(
        message:
            errorMessage ?? 'An unexpected error occurred in repository call.',
        cause: error,
      ),
    );
  });
}
