// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@Freezed(toJson: false)
sealed class Question with _$Question {
  @JsonSerializable(fieldRename: FieldRename.snake, createToJson: false)
  const factory Question({
    required String id,
    required String quizId,
    required String content,
    required List<String> options,
    required int correctOptionIndex,
    required int points,
  }) = _Question;

  factory Question.fromJson(Map<String, dynamic> json) =>
      _$QuestionFromJson(json);
}
