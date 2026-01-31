import 'package:realtime_quiz_app/domain/entities/session.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/repositories/session_repository.dart';

class GetSessionBySessionIdUseCase {
  final SessionRepository _sessionRepository;
  GetSessionBySessionIdUseCase({required SessionRepository sessionRepository})
    : _sessionRepository = sessionRepository;

  Future<AppResult<Session?>> call(String sessionId) async {
    return _sessionRepository.getSessionBySessionId(sessionId: sessionId);
  }
}
