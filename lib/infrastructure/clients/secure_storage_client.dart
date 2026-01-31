// ignore_for_file: lines_longer_than_80_chars, deprecated_member_use

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:realtime_quiz_app/core/di/locator.dart';
import 'package:realtime_quiz_app/domain/services/logger_service.dart';

/// A class to manage secure storage operations.
///
/// This class provides access to FlutterSecureStorage operations.
class SecureStorageClient {
  final LoggerService _logger;

  // Instance of FlutterSecureStorage
  final FlutterSecureStorage _storage = const FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
    iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
  );

  SecureStorageClient({LoggerService? logger})
    : _logger = logger ?? sl.get<LoggerService>(param1: SecureStorageClient);

  FlutterSecureStorage get storage => _storage;

  /// Checks if a key exists in secure storage.
  ///
  /// [key]: The key to check.
  /// Returns true if the key exists, false otherwise.
  Future<bool> containsKey({required String key}) async {
    try {
      final contains = await _storage.containsKey(key: key);
      _logger.info(
        title:
            'SecureStorageManager: Key "$key" ${contains ? "exists" : "does not exist"}.',
      );
      return contains;
    } catch (e) {
      _logger.error(
        title: 'SecureStorageManager: Error checking key "$key": $e',
      );
      return false;
    }
  }

  /// Deletes all values from secure storage.
  Future<void> deleteAllValues() async {
    try {
      await _storage.deleteAll();
      _logger.info(title: 'SecureStorageManager: All values deleted.');
    } catch (e) {
      _logger.error(
        title: 'SecureStorageManager: Error deleting all values: $e',
      );
    }
  }

  /// Deletes a value from secure storage.
  ///
  /// [key]: The key of the value to delete.
  Future<void> deleteValue({required String key}) async {
    try {
      await _storage.delete(key: key);
      _logger.info(title: 'SecureStorageManager: Value deleted for key "$key"');
    } catch (e) {
      _logger.error(
        title: 'SecureStorageManager: Error deleting value for key "$key": $e',
      );
    }
  }

  /// Reads all values from secure storage.
  ///
  /// Returns a map containing all key-value pairs.
  Future<Map<String, String>> readAllValues() async {
    try {
      final allValues = await _storage.readAll();
      _logger.info(
        title:
            'SecureStorageManager: All values read. Found ${allValues.length} items.',
      );
      return allValues;
    } catch (e) {
      _logger.error(
        title: 'SecureStorageManager: Error reading all values: $e',
      );
      return {};
    }
  }

  /// Reads a value from secure storage.
  ///
  /// [key]: The key of the value to read.
  /// Returns the value associated with the key, or null if the key is not
  /// found.
  Future<String?> readValue({required String key}) async {
    try {
      final value = await _storage.read(key: key);
      if (value != null) {
        _logger.info(title: 'SecureStorageManager: Value read for key "$key"');
      } else {
        _logger.info(
          title: 'SecureStorageManager: No value found for key "$key"',
        );
      }
      return value;
    } catch (e) {
      _logger.error(
        title: 'SecureStorageManager: Error reading value for key "$key": $e',
      );
      return null;
    }
  }

  /// Writes a value to secure storage.
  ///
  /// [key]: The key under which to store the value.
  /// [value]: The value to store.
  Future<void> writeValue({required String key, required String? value}) async {
    try {
      await _storage.write(key: key, value: value);
      _logger.info(title: 'SecureStorageManager: Value written for key "$key"');
    } catch (e) {
      _logger.error(
        title: 'SecureStorageManager: Error writing value for key "$key": $e',
      );
    }
  }
}
