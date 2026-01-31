import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';

import '../../domain/services/logger_service.dart';

/// Implementation of [LoggerService] that logs to console
///
/// This implementation provides colored output in debug mode and uses
/// dart:developer's log function for better integration with Flutter DevTools.
///
/// Usage:
/// ```dart
/// final logger = LoggerServiceImpl().forContext<MyClass>();
/// logger.info(title: 'Something happened');
/// ```
class LoggerServiceImpl implements LoggerService {
  /// Optional class name for scoped logger instances
  final String? _className;

  /// Creates a new logger service
  ///
  /// If [_className] is not provided, you must use [forContext] to create
  /// a scoped logger before using any log methods.
  const LoggerServiceImpl([this._className]);

  @override
  LoggerService forContext(Type type) {
    final className = type.toString();
    return LoggerServiceImpl(className);
  }

  /// ANSI color codes for terminal output
  static const String _reset = '\x1B[0m';
  static const String _green = '\x1B[32m';
  static const String _yellow = '\x1B[33m';
  static const String _red = '\x1B[31m';
  static const String _blue = '\x1B[34m';
  static const String _cyan = '\x1B[36m';
  static const String _gray = '\x1B[90m';

  /// Emoji indicators for different log levels
  static const String _infoEmoji = 'ℹ️';
  static const String _successEmoji = '✅';
  static const String _warningEmoji = '⚠️';
  static const String _errorEmoji = '❌';
  static const String _debugEmoji = '🔍';

  @override
  void info({required String title, String? message, Object? data}) {
    assert(
      _className != null,
      'LoggerService must be scoped to a context. '
      'Use forContext<T>() to create a scoped logger.',
    );
    _log(
      level: 'INFO',
      className: _className!,
      title: title,
      message: message,
      data: data,
      color: _blue,
      emoji: _infoEmoji,
      logLevel: 800,
    );
  }

  @override
  void success({required String title, String? message, Object? data}) {
    assert(
      _className != null,
      'LoggerService must be scoped to a context. '
      'Use forContext<T>() to create a scoped logger.',
    );
    _log(
      level: 'SUCCESS',
      className: _className!,
      title: title,
      message: message,
      data: data,
      color: _green,
      emoji: _successEmoji,
      logLevel: 800,
    );
  }

  @override
  void warning({required String title, String? message, Object? data}) {
    assert(
      _className != null,
      'LoggerService must be scoped to a context. '
      'Use forContext<T>() to create a scoped logger.',
    );
    _log(
      level: 'WARNING',
      className: _className!,
      title: title,
      message: message,
      data: data,
      color: _yellow,
      emoji: _warningEmoji,
      logLevel: 900,
    );
  }

  @override
  void error({
    required String title,
    String? message,
    Object? error,
    StackTrace? stackTrace,
  }) {
    assert(
      _className != null,
      'LoggerService must be scoped to a context. '
      'Use forContext<T>() to create a scoped logger.',
    );
    _log(
      level: 'ERROR',
      className: _className!,
      title: title,
      message: message,
      data: error,
      stackTrace: stackTrace,
      color: _red,
      emoji: _errorEmoji,
      logLevel: 1000,
    );
  }

  @override
  void debug({required String title, String? message, Object? data}) {
    // Only log debug messages in debug mode
    if (!kDebugMode) return;

    assert(
      _className != null,
      'LoggerService must be scoped to a context. '
      'Use forContext<T>() to create a scoped logger.',
    );
    _log(
      level: 'DEBUG',
      className: _className!,
      title: title,
      message: message,
      data: data,
      color: _cyan,
      emoji: _debugEmoji,
      logLevel: 500,
    );
  }

  /// Internal method to format and output log messages
  ///
  /// Parameters:
  /// - [level]: The log level (INFO, SUCCESS, WARNING, ERROR, DEBUG)
  /// - [className]: The name of the class where the log originates
  /// - [title]: A brief title describing the log entry
  /// - [message]: Detailed information (optional)
  /// - [data]: Additional data to log (optional)
  /// - [stackTrace]: Stack trace for errors (optional)
  /// - [color]: ANSI color code for terminal output
  /// - [emoji]: Emoji indicator for the log level
  /// - [logLevel]: Numeric level for dart:developer log function
  void _log({
    required String level,
    required String className,
    required String title,
    String? message,
    Object? data,
    StackTrace? stackTrace,
    required String color,
    required String emoji,
    required int logLevel,
  }) {
    final timestamp = DateTime.now().toIso8601String();
    final buffer = StringBuffer();

    // Format: [TIMESTAMP] EMOJI LEVEL [ClassName] Title
    if (kDebugMode) {
      buffer.write('$color$emoji $level$_reset ');
      buffer.write('$_gray[$timestamp]$_reset ');
      buffer.write('$color[$className]$_reset ');
      buffer.writeln('$color$title$_reset');
    } else {
      buffer.write('$emoji $level ');
      buffer.write('[$timestamp] ');
      buffer.write('[$className] ');
      buffer.writeln(title);
    }

    // Add message if provided
    if (message != null && message.isNotEmpty) {
      if (kDebugMode) {
        buffer.writeln('${_gray}Message:$_reset $message');
      } else {
        buffer.writeln('Message: $message');
      }
    }

    // Add data if provided
    if (data != null) {
      if (kDebugMode) {
        buffer.writeln('${_gray}Data:$_reset $data');
      } else {
        buffer.writeln('Data: $data');
      }
    }

    // Add stack trace if provided (typically for errors)
    if (stackTrace != null) {
      if (kDebugMode) {
        buffer.writeln('${_gray}StackTrace:$_reset');
        buffer.writeln('$_red$stackTrace$_reset');
      } else {
        buffer.writeln('StackTrace:');
        buffer.writeln(stackTrace);
      }
    }

    // Add separator line for better readability
    if (kDebugMode) {
      buffer.writeln('$_gray${'─' * 80}$_reset');
    } else {
      buffer.writeln('─' * 80);
    }

    // Use dart:developer log for better integration with Flutter DevTools
    developer.log(
      buffer.toString(),
      name: className,
      level: logLevel,
      error: data is Exception || data is Error ? data : null,
      stackTrace: stackTrace,
      time: DateTime.now(),
    );
  }
}
