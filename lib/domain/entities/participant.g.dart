// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Participant _$ParticipantFromJson(Map<String, dynamic> json) => _Participant(
  id: json['id'] as String,
  sessionId: json['session_id'] as String,
  userId: json['user_id'] as String,
  nickname: json['nickname'] as String,
  score: (json['score'] as num).toInt(),
  joinedAt: DateTime.parse(json['joined_at'] as String),
);
