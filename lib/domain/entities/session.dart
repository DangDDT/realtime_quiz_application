// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:realtime_quiz_app/domain/entities/auth_user.dart';
import 'package:realtime_quiz_app/domain/entities/quiz.dart';
import 'package:realtime_quiz_app/domain/enums/session_state_enum.dart';

part 'session.freezed.dart';
part 'session.g.dart';

@Freezed(toJson: false)
sealed class Session with _$Session {
  @JsonSerializable(fieldRename: FieldRename.snake, createToJson: false)
  const factory Session({
    required String id,
    required String pinCode,
    required AuthUser host,
    required Quiz quiz,
    required SessionStateEnum status,
    required DateTime createdAt,
    required int sessionActiveTime,
    required DateTime? expiredAt,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}
