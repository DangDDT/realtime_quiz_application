import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/repositories/participant_repository.dart';

class LeaveSessionUseCase {
  final ParticipantRepository _participantRepository;
  LeaveSessionUseCase({required ParticipantRepository participantRepository})
    : _participantRepository = participantRepository;

  Future<AppResult<void>> call({
    required String sessionId,
    required String userId,
  }) async {
    return _participantRepository.deleteParticipant(
      sessionId: sessionId,
      userId: userId,
    );
  }
}
