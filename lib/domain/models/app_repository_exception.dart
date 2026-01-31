import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realtime_quiz_app/domain/models/app_error.dart';

part 'app_repository_exception.freezed.dart';

/// {@template repository_exception}
/// A base exception class for all repository-related exceptions.
///
/// This sealed class serves as the parent for all exceptions that can occur
/// within repository implementations. By using a sealed class, we ensure
/// that all possible repository exceptions are known at compile time,
/// making error handling more predictable and exhaustive.
///
/// Repository exceptions should be used for infrastructure-level errors
/// that occur during data operations, before they're converted to [AppError]
/// instances in the repository layer's public API.
/// {@endtemplate}
@freezed
sealed class AppRepositoryException
    with _$AppRepositoryException
    implements Exception {
  /// {@macro local_storage_repository_exception}
  /// Exception thrown when a repository operation involving local storage fails.
  ///
  /// This exception is typically thrown when operations like reading from
  /// or writing to a local database, file system, or device storage encounter
  /// errors. It wraps an [AppError] that provides more specific details about
  /// the nature of the failure.
  ///
  /// Example usage:
  /// ```dart
  /// try {
  ///   await localDatabase.saveData(data);
  /// } catch (e, st) {
  ///   final appError = localStorageErrorHandler.mapLocalStorageException(e, st);
  ///   throw AppRepositoryException.local(appError);
  /// }
  /// ```
  const factory AppRepositoryException.local(AppError cause) =
      LocalStorageRepositoryException;

  /// {@macro remote_repository_exception}
  /// Exception thrown when a repository operation involving remote data sources
  /// fails.
  ///
  /// This exception is typically thrown when API calls, network requests, or
  /// other remote data operations encounter errors. It wraps an [AppError]
  /// that provides more specific details about the nature of the failure,
  /// such as network connectivity issues, server errors, or authentication
  /// problems.
  ///
  /// Example usage:
  /// ```dart
  /// try {
  ///   await apiClient.fetchData();
  /// } catch (e) {
  ///   if (e is DioException) {
  ///     final appError = apiErrorHandler.mapDioException(e);
  ///     throw AppRepositoryException.remote(appError);
  ///   }
  ///   rethrow;
  /// }
  /// ```
  const factory AppRepositoryException.remote(AppError cause) =
      RemoteRepositoryException;
}
