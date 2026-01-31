// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer.freezed.dart';
part 'answer.g.dart';

@Freezed(toJson: false)
sealed class Answer with _$Answer {
  @JsonSerializable(fieldRename: FieldRename.snake, createToJson: false)
  const factory Answer({
    required String id,
    required String sessionId,
    required String userId,
    required String questionId,
    required int selectedOptionIndex,
    required bool isCorrect,
    required DateTime submittedAt,
  }) = _Answer;

  factory Answer.fromJson(Map<String, dynamic> json) => _$AnswerFromJson(json);
}
