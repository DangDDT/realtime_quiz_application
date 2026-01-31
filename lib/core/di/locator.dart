import 'package:get_it/get_it.dart';
import 'package:realtime_quiz_app/core/env/env_collection.dart';
import 'package:realtime_quiz_app/core/env/implements/env_default.dart';
import 'package:realtime_quiz_app/domain/models/app_result.dart';
import 'package:realtime_quiz_app/domain/repositories/answer_repository.dart';
import 'package:realtime_quiz_app/domain/repositories/auth_repository.dart';
import 'package:realtime_quiz_app/domain/repositories/participant_repository.dart';
import 'package:realtime_quiz_app/domain/repositories/question_repository.dart';
import 'package:realtime_quiz_app/domain/repositories/session_repository.dart';
import 'package:realtime_quiz_app/domain/services/logger_service.dart';
import 'package:realtime_quiz_app/domain/services/toast_service.dart';
import 'package:realtime_quiz_app/domain/usecases/check_participant_is_existed_in_session/check_participant_is_existed_in_session_use_case.dart';
import 'package:realtime_quiz_app/domain/usecases/create_participant_by_session_id/create_participant_by_session_id_use_case.dart';
import 'package:realtime_quiz_app/domain/usecases/get_current_user/get_current_user_use_case.dart';
import 'package:realtime_quiz_app/domain/usecases/get_question_by_id/get_question_by_id_use_case.dart';
import 'package:realtime_quiz_app/domain/usecases/get_questions_by_quiz_id/get_questions_by_quiz_id_use_case.dart';
import 'package:realtime_quiz_app/domain/usecases/get_session_id_by_pin_code/get_session_id_by_pin_code_use_case.dart';
import 'package:realtime_quiz_app/domain/usecases/leave_session/leave_session_use_case.dart';
import 'package:realtime_quiz_app/domain/usecases/login/login_use_case.dart';
import 'package:realtime_quiz_app/domain/usecases/get_answers_by_session_and_user/get_answers_by_session_and_user_use_case.dart';
import 'package:realtime_quiz_app/domain/usecases/submit_answer/submit_answer_use_case.dart';
import 'package:realtime_quiz_app/domain/usecases/watch_answers_by_session_and_user/watch_answers_by_session_and_user_use_case.dart';
import 'package:realtime_quiz_app/domain/usecases/watch_participant_by_session_id/watch_partcipant_by_session_id_use_case.dart';
import 'package:realtime_quiz_app/domain/usecases/watch_session_by_session_id/watch_session_status_by_pin_code_use_case.dart';
import 'package:realtime_quiz_app/infrastructure/clients/secure_storage_client.dart';
import 'package:realtime_quiz_app/infrastructure/clients/supabase_client.dart';
import 'package:realtime_quiz_app/infrastructure/repositories/answer_repository_impl.dart';
import 'package:realtime_quiz_app/infrastructure/repositories/auth_repository_impl.dart';
import 'package:realtime_quiz_app/infrastructure/repositories/participant_repository_impl.dart';
import 'package:realtime_quiz_app/infrastructure/repositories/question_repository_impl.dart';
import 'package:realtime_quiz_app/infrastructure/repositories/session_repository_impl.dart';
import 'package:realtime_quiz_app/infrastructure/services/logger_service_impl.dart';
import 'package:realtime_quiz_app/infrastructure/services/toast_service_impl.dart';
import 'package:realtime_quiz_app/presentation/arena/bloc/question_bloc.dart';
import 'package:realtime_quiz_app/presentation/arena/bloc/answer_history_bloc.dart';
import 'package:realtime_quiz_app/presentation/arena/cubit/answer_cubit.dart';
import 'package:realtime_quiz_app/presentation/auth/bloc/auth_bloc.dart';
import 'package:realtime_quiz_app/presentation/entry/cubit/verification_session_cubit.dart';
import 'package:realtime_quiz_app/presentation/session/bloc/participant_bloc.dart';
import 'package:realtime_quiz_app/presentation/session/bloc/session_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide AuthUser;

final sl = GetIt.instance;

Future<void> setupLocator() async {
  sl.registerCachedFactoryParam<LoggerService, Type, void>(
    (type, _) => LoggerServiceImpl().forContext(type),
  );
  final env = sl.registerSingleton<EnvCollection>(EnvDefault());

  EnvCollection.logAllValues(env.toMap());

  await Supabase.initialize(url: env.supabaseUrl, anonKey: env.supabaseAnonKey);

  sl.registerSingleton<AppSupabaseClient>(
    AppSupabaseClient(Supabase.instance.client),
  );

  sl.registerLazySingleton<SecureStorageClient>(() => SecureStorageClient());

  sl.registerSingleton<ToastService>(ToastServiceImpl());

  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(supabaseClient: sl()),
  );

  sl.registerLazySingleton<SessionRepository>(
    () => SessionRepositoryImpl(supabaseClient: sl()),
  );

  sl.registerLazySingleton<ParticipantRepository>(
    () => ParticipantRepositoryImpl(supabaseClient: sl()),
  );

  sl.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(authRepository: sl()),
  );

  sl.registerLazySingleton<GetCurrentUserUseCase>(
    () => GetCurrentUserUseCase(authRepository: sl()),
  );

  final getCurrentUserUseCase = sl<GetCurrentUserUseCase>();

  final currentUserResult = await getCurrentUserUseCase.call();
  final currentUser = currentUserResult.when(
    success: (currentUser) => currentUser,
    failure: (error) => null,
  );

  sl.registerSingleton<AuthBloc>(
    AuthBloc(loginUseCase: sl(), initialUser: currentUser),
  );

  sl.registerLazySingleton<WatchSessionBySessionIdUseCase>(
    () => WatchSessionBySessionIdUseCase(sessionRepository: sl()),
  );

  sl.registerLazySingleton<LeaveSessionUseCase>(
    () => LeaveSessionUseCase(participantRepository: sl()),
  );

  sl.registerFactory<SessionBloc>(
    () => SessionBloc(
      watchSessionBySessionIdUseCase: sl(),
      leaveSessionUseCase: sl(),
    ),
  );

  sl.registerLazySingleton<GetSessionIdAndStatusByPinCodeUseCase>(
    () => GetSessionIdAndStatusByPinCodeUseCase(sessionRepository: sl()),
  );

  sl.registerLazySingleton<CreateParticipantBySessionIdUseCase>(
    () => CreateParticipantBySessionIdUseCase(participantRepository: sl()),
  );

  sl.registerLazySingleton<CheckParticipantIsExistedInSessionUseCase>(
    () =>
        CheckParticipantIsExistedInSessionUseCase(participantRepository: sl()),
  );

  sl.registerFactory<VerificationSessionCubit>(
    () => VerificationSessionCubit(
      getSessionIdAndStatusByPinCodeUseCase: sl(),
      createParticipantBySessionIdUseCase: sl(),
      checkParticipantIsExistedInSessionUseCase: sl(),
    ),
  );

  sl.registerLazySingleton<WatchParticipantsBySessionIdUseCase>(
    () => WatchParticipantsBySessionIdUseCase(participantRepository: sl()),
  );

  sl.registerFactory<ParticipantBloc>(
    () => ParticipantBloc(watchParticipantsBySessionIdUseCase: sl()),
  );

  sl.registerLazySingleton<GetQuestionsByQuizIdUseCase>(
    () => GetQuestionsByQuizIdUseCase(questionRepository: sl()),
  );

  sl.registerLazySingleton<QuestionRepository>(
    () => QuestionRepositoryImpl(supabaseClient: sl()),
  );

  sl.registerLazySingleton<GetQuestionByIdUseCase>(
    () => GetQuestionByIdUseCase(questionRepository: sl()),
  );

  sl.registerFactory<QuestionBloc>(
    () => QuestionBloc(getQuestionsByQuizIdUseCase: sl()),
  );

  sl.registerLazySingleton<AnswerRepository>(
    () => AnswerRepositoryImpl(supabaseClient: sl()),
  );

  sl.registerLazySingleton<SubmitAnswerUseCase>(
    () => SubmitAnswerUseCase(answerRepository: sl()),
  );

  sl.registerFactory<AnswerCubit>(() => AnswerCubit(submitAnswerUseCase: sl()));

  sl.registerLazySingleton<WatchAnswersBySessionAndUserUseCase>(
    () => WatchAnswersBySessionAndUserUseCase(answerRepository: sl()),
  );

  sl.registerLazySingleton<GetAnswersBySessionAndUserUseCase>(
    () => GetAnswersBySessionAndUserUseCase(answerRepository: sl()),
  );

  sl.registerFactory<AnswerHistoryBloc>(
    () => AnswerHistoryBloc(
      watchAnswersBySessionAndUserUseCase: sl(),
      getAnswersBySessionAndUserUseCase: sl(),
    ),
  );
}
