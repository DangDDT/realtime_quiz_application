import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realtime_quiz_app/domain/models/app_error.dart';

part 'app_result.freezed.dart';

/// Result type ergonomically wraps a success or failure result for CRUD
/// operations across the chat app (e.g., messages, conversations, members).
///
/// Represents either a success with data of type T
/// or a failure with an [AppError].
@freezed
sealed class AppResult<T> with _$AppResult<T> {
  /// Creates a successful result containing the
  /// operation's data (e.g., a message, conversation, or member).
  const factory AppResult.success(T data) = SuccessResult<T>;

  /// Creates a failure result containing the error details.
  const factory AppResult.failure(AppError error) = FailureResult<T>;
}

/// Extension on [AppResult] providing convenient utility methods
/// for working with success and failure states.
extension AppResultX<T> on AppResult<T> {
  /// Returns the success result if available,
  ///
  /// Make sure to check [isSuccess] first before accessing the data.
  SuccessResult<T> get success => this as SuccessResult<T>;

  /// Returns the failure result if available,
  ///
  /// Make sure to check [isFailure] first before accessing the error.
  FailureResult<T> get failure => this as FailureResult<T>;

  /// Returns `true` if this result represents a successful operation.
  ///
  /// Example:
  /// ```dart
  /// final result = await repository.fetchData();
  /// if (result.isSuccess) {
  ///   // Handle success case
  /// }
  /// ```
  bool get isSuccess => this is SuccessResult<T>;

  /// Returns `true` if this result represents a failed operation.
  ///
  /// Example:
  /// ```dart
  /// final result = await repository.fetchData();
  /// if (result.isFailure) {
  ///   // Handle failure case
  /// }
  /// ```
  bool get isFailure => this is FailureResult<T>;

  /// Safely accesses the data from a successful result.
  ///
  /// Returns the data if this is a [SuccessResult], otherwise returns `null`.
  ///
  /// Example:
  /// ```dart
  /// final result = await repository.fetchData();
  /// final data = result.data;
  /// if (data != null) {
  ///   // Use the data
  /// }
  /// ```
  T? get data =>
      this is SuccessResult<T> ? (this as SuccessResult<T>).data : null;

  /// Safely accesses the error from a failed result.
  ///
  /// Returns the error if this is a [FailureResult], otherwise returns `null`.
  ///
  /// Example:
  /// ```dart
  /// final result = await repository.fetchData();
  /// final error = result.error;
  /// if (error != null) {
  ///   // Handle specific error
  /// }
  /// ```
  AppError? get error =>
      this is FailureResult<T> ? (this as FailureResult<T>).error : null;
}
