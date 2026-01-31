/// Logger service interface for application-wide logging
///
/// Provides standardized logging functionality with different severity levels.
///
/// Usage:
/// ```dart
/// class MyClass {
///   final LoggerService _logger = LoggerServiceImpl().forContext<MyClass>();
///
///   void someMethod() {
///     _logger.info(title: 'Operation started');
///   }
/// }
/// ```
abstract class LoggerService {
  /// Creates a logger scoped to a specific context type
  ///
  /// The type parameter [T] is used to automatically determine the class name
  /// for all log entries, eliminating the need to pass className repeatedly.
  ///
  /// Example:
  /// ```dart
  /// final logger = LoggerServiceImpl().forContext<AuthBloc>();
  /// logger.info(title: 'User logged in'); //ClassName will be 'AuthBloc'
  /// ```
  LoggerService forContext(Type type);

  /// Logs an informational message
  ///
  /// Use this for general information about application flow and state.
  ///
  /// Parameters:
  /// - [title]: A brief title describing the log entry
  /// - [message]: Detailed information about the event
  /// - [data]: Optional additional data to include in the log
  void info({required String title, String? message, Object? data});

  /// Logs a success message
  ///
  /// Use this for successful operations, completions, or positive outcomes.
  ///
  /// Parameters:
  /// - [title]: A brief title describing the success
  /// - [message]: Detailed information about the successful operation
  /// - [data]: Optional additional data to include in the log
  void success({required String title, String? message, Object? data});

  /// Logs a warning message
  ///
  /// Use this for potentially problematic situations that don't prevent
  /// the application from functioning but should be addressed.
  ///
  /// Parameters:
  /// - [title]: A brief title describing the warning
  /// - [message]: Detailed information about the warning
  /// - [data]: Optional additional data to include in the log
  void warning({required String title, String? message, Object? data});

  /// Logs an error message
  ///
  /// Use this for errors and exceptions that occur during application execution.
  ///
  /// Parameters:
  /// - [title]: A brief title describing the error
  /// - [message]: Detailed information about the error
  /// - [error]: The error or exception object
  /// - [stackTrace]: The stack trace associated with the error
  void error({
    required String title,
    String? message,
    Object? error,
    StackTrace? stackTrace,
  });

  /// Logs a debug message
  ///
  /// Use this for detailed diagnostic information useful during development.
  /// These logs are typically disabled in production builds.
  ///
  /// Parameters:
  /// - [title]: A brief title describing the debug entry
  /// - [message]: Detailed diagnostic information
  /// - [data]: Optional additional data to include in the log
  void debug({required String title, String? message, Object? data});
}
