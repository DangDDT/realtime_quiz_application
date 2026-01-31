import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/repositories/participant_repository.dart';

class CheckParticipantIsExistedInSessionUseCase {
  final ParticipantRepository _participantRepository;
  CheckParticipantIsExistedInSessionUseCase({
    required ParticipantRepository participantRepository,
  }) : _participantRepository = participantRepository;

  Future<AppResult<bool>> call({
    required String sessionId,
    required String userId,
  }) async {
    return _participantRepository.checkParticipantIsExistedInSession(
      sessionId: sessionId,
      userId: userId,
    );
  }
}
