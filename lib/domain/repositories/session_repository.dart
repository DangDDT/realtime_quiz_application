import 'package:realtime_quiz_app/domain/entities/session.dart';
import 'package:realtime_quiz_app/domain/enums/session_state_enum.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';

interface class SessionRepository {
  Future<AppResult<(String, SessionStateEnum)?>>
  getSessionIdAndStatusByPinCode({required String pinCode}) =>
      throw UnimplementedError();

  Future<AppResult<Session?>> getSessionBySessionId({
    required String sessionId,
  }) => throw UnimplementedError();

  Stream<AppResult<Session>> watchSessionBySessionId({
    required String sessionId,
  }) => throw UnimplementedError();
}
