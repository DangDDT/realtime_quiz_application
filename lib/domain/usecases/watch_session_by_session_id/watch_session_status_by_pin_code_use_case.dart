import 'package:realtime_quiz_app/domain/entities/session.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/repositories/session_repository.dart';

class WatchSessionBySessionIdUseCase {
  final SessionRepository _sessionRepository;
  WatchSessionBySessionIdUseCase({required SessionRepository sessionRepository})
    : _sessionRepository = sessionRepository;

  Stream<AppResult<Session>> call(String sessionId) {
    return _sessionRepository.watchSessionBySessionId(sessionId: sessionId);
  }
}
