// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Session _$SessionFromJson(Map<String, dynamic> json) => _Session(
  id: json['id'] as String,
  pinCode: json['pin_code'] as String,
  host: AuthUser.fromJson(json['host'] as Map<String, dynamic>),
  quiz: Quiz.fromJson(json['quiz'] as Map<String, dynamic>),
  status: $enumDecode(_$SessionStateEnumEnumMap, json['status']),
  createdAt: DateTime.parse(json['created_at'] as String),
  sessionActiveTime: (json['session_active_time'] as num).toInt(),
  expiredAt: json['expired_at'] == null
      ? null
      : DateTime.parse(json['expired_at'] as String),
);

const _$SessionStateEnumEnumMap = {
  SessionStateEnum.waiting: 'WAITING',
  SessionStateEnum.active: 'ACTIVE',
  SessionStateEnum.canceled: 'CANCELED',
  SessionStateEnum.finished: 'FINISHED',
};
