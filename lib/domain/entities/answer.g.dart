// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Answer _$AnswerFromJson(Map<String, dynamic> json) => _Answer(
  id: json['id'] as String,
  sessionId: json['session_id'] as String,
  userId: json['user_id'] as String,
  questionId: json['question_id'] as String,
  selectedOptionIndex: (json['selected_option_index'] as num).toInt(),
  isCorrect: json['is_correct'] as bool,
  submittedAt: DateTime.parse(json['submitted_at'] as String),
);
