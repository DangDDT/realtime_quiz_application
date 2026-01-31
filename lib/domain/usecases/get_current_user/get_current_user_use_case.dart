import 'package:realtime_quiz_app/domain/entities/auth_user.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/repositories/auth_repository.dart';

class GetCurrentUserUseCase {
  final AuthRepository _authRepository;
  GetCurrentUserUseCase({required AuthRepository authRepository})
    : _authRepository = authRepository;

  Future<AppResult<AuthUser?>> call() async {
    return _authRepository.getCurrentUser();
  }
}
