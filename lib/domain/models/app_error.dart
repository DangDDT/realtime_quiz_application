import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_error.freezed.dart';

/// If having specific error types is necessary,
/// implement this interface to convert to [AppError].
abstract class ToAppError {
  /// Convert to [AppError].
  ///
  /// The root error should be add to `cause` field of [AppError].
  AppError get toAppError;
}

/// Represents global errors across the app, including
/// network issues, server failures, validation problems,
/// authentication errors, and more.
///
/// This can be reused by any feature/module (e.g., chat, auth, sync).
@freezed
sealed class AppError with _$AppError {
  /// Network-related failure (e.g., no internet, timeout).
  const factory AppError.network({
    required String message,
    String? errorCode,
    Object? cause,
    @Default(true) bool retryable,
  }) = NetworkError;

  /// Failure when loading data from local or remote sources.
  const factory AppError.loadFailed({
    required String message,
    Object? cause,
    @Default(false) bool retryable,
  }) = LoadFailedError;

  /// Resource not found.
  const factory AppError.notFound({
    required String message,
    String? resourceId,
    Object? cause,
    @Default(false) bool retryable,
  }) = NotFoundError;

  /// Unauthenticated or expired session.
  const factory AppError.unauthorized({
    required String message,
    String? errorCode,
    Object? cause,
    @Default(false) bool retryable,
  }) = UnauthorizedError;

  /// Insufficient permissions for the operation.
  const factory AppError.permission({
    required String message,
    String? errorCode,
    Object? cause,
    @Default(false) bool retryable,
  }) = PermissionError;

  /// Server-side failure (e.g., HTTP 5xx).
  const factory AppError.server({
    required String message,
    String? errorCode,
    Object? cause,
    @Default(true) bool retryable,
  }) = ServerError;

  /// Remote API failure (e.g., HTTP 4xx).
  const factory AppError.externalService({
    required String message,
    Object? cause,
    @Default(true) bool retryable,
  }) = ExternalServiceError;

  /// Input validation error.
  const factory AppError.validation({
    required String message,
    Object? cause,
    @Default(false) bool retryable,
  }) = ValidationError;

  /// Conflict in state (e.g., data version mismatch).
  const factory AppError.conflict({
    required String message,
    String? resourceId,
    Object? cause,
    @Default(false) bool retryable,
  }) = ConflictError;

  /// Dependency failure (e.g., missing required data).
  const factory AppError.dependency({
    required String message,
    String? dependencyId,
    Object? cause,
    @Default(false) bool retryable,
  }) = DependencyError;

  /// Local storage access/read/write error.
  const factory AppError.localStorage({
    required String message,
    Object? cause,
    @Default(false) bool retryable,
  }) = LocalStorageError;

  /// Serialization/deserialization error.
  const factory AppError.serialization({
    required String message,
    Object? cause,
    @Default(false) bool retryable,
  }) = SerializationError;

  /// Synchronization error (e.g., rejected sync payload).
  const factory AppError.syncFailed({
    required String message,
    String? errorCode,
    Object? cause,
    @Default(true) bool retryable,
  }) = SyncFailedError;

  /// Internal unhandled error (e.g., logic bugs).
  const factory AppError.internal({
    required String message,
    Object? cause,
    @Default(false) bool retryable,
  }) = InternalError;

  /// Unknown error (e.g., unexpected error and not handled).
  const factory AppError.unknown({
    required String message,
    Object? cause,
    @Default(false) bool retryable,
  }) = UnknownError;

  /// Uncaught error (e.g., specific error but developers have not handled yet,
  /// need to be handled soon).
  const factory AppError.uncaught({
    required String message,
    Object? cause,
    @Default(false) bool retryable,
  }) = UncaughtError;

  /// Canceled error (e.g., user cancelled the operation).
  ///
  /// This error should be used for cancellation signals.
  const factory AppError.cancelled({
    required String message,
    Object? cause,
    @Default(false) bool retryable,
  }) = CanceledError;

  const factory AppError.business({
    required String message,
    Object? cause,
    @Default(false) bool retryable,
  }) = BusinessError;

  /// Custom error for extension or third-party integration.
  const factory AppError.custom({
    required String message,
    String? errorCode,
    Object? cause,
    @Default(false) bool retryable,
  }) = CustomError;
}
