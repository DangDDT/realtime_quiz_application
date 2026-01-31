// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Question _$QuestionFromJson(Map<String, dynamic> json) => _Question(
  id: json['id'] as String,
  quizId: json['quiz_id'] as String,
  content: json['content'] as String,
  options: (json['options'] as List<dynamic>).map((e) => e as String).toList(),
  correctOptionIndex: (json['correct_option_index'] as num).toInt(),
  points: (json['points'] as num).toInt(),
);
