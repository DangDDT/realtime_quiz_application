import 'package:realtime_quiz_app/domain/entities/participant.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';

interface class ParticipantRepository {
  Future<AppResult<void>> createParticipant({
    required String sessionId,
    required String userId,
    required String nickName,
  }) => throw UnimplementedError();

  Future<AppResult<bool>> checkParticipantIsExistedInSession({
    required String sessionId,
    required String userId,
  }) => throw UnimplementedError();

  Stream<AppResult<List<Participant>>> watchParticipantsBySessionId({
    required String sessionId,
  }) => throw UnimplementedError();

  Future<AppResult<void>> deleteParticipant({
    required String sessionId,
    required String userId,
  }) => throw UnimplementedError();
}
