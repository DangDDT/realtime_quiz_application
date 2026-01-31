import 'package:realtime_quiz_app/domain/entities/participant.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/repositories/participant_repository.dart';

class WatchParticipantsBySessionIdUseCase {
  final ParticipantRepository _participantRepository;
  WatchParticipantsBySessionIdUseCase({
    required ParticipantRepository participantRepository,
  }) : _participantRepository = participantRepository;

  Stream<AppResult<List<Participant>>> call(String sessionId) {
    return _participantRepository.watchParticipantsBySessionId(
      sessionId: sessionId,
    );
  }
}
