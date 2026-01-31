// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'participant.freezed.dart';
part 'participant.g.dart';

@Freezed(toJson: false)
sealed class Participant with _$Participant {
  @JsonSerializable(fieldRename: FieldRename.snake, createToJson: false)
  const factory Participant({
    required String id,
    required String sessionId,
    required String userId,
    required String nickname,
    required int score,
    required DateTime joinedAt,
  }) = _Participant;

  factory Participant.fromJson(Map<String, dynamic> json) =>
      _$ParticipantFromJson(json);
}
