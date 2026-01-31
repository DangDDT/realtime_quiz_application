import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/repositories/participant_repository.dart';

class CreateParticipantBySessionIdUseCase {
  final ParticipantRepository _participantRepository;
  CreateParticipantBySessionIdUseCase({
    required ParticipantRepository participantRepository,
  }) : _participantRepository = participantRepository;

  Future<AppResult<void>> call({
    required String sessionId,
    required String userId,
    required String nickName,
  }) async {
    return _participantRepository.createParticipant(
      sessionId: sessionId,
      userId: userId,
      nickName: nickName,
    );
  }
}
