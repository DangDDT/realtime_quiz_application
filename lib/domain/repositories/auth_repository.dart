import 'package:realtime_quiz_app/domain/entities/auth_user.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';

interface class AuthRepository {
  Future<AppResult<AuthUser>> login() => throw UnimplementedError();
  Future<AppResult<AuthUser?>> getCurrentUser() => throw UnimplementedError();
  Future<AppResult<void>> logout() => throw UnimplementedError();
}
