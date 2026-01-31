import 'package:realtime_quiz_app/domain/enums/session_state_enum.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/repositories/session_repository.dart';

class GetSessionIdAndStatusByPinCodeUseCase {
  final SessionRepository _sessionRepository;
  GetSessionIdAndStatusByPinCodeUseCase({
    required SessionRepository sessionRepository,
  }) : _sessionRepository = sessionRepository;

  Future<AppResult<(String, SessionStateEnum)?>> call(String pinCode) async {
    return _sessionRepository.getSessionIdAndStatusByPinCode(pinCode: pinCode);
  }
}
