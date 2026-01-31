// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz.freezed.dart';
part 'quiz.g.dart';

@Freezed(toJson: false)
sealed class Quiz with _$Quiz {
  @JsonSerializable(fieldRename: FieldRename.snake, createToJson: false)
  const factory Quiz({
    required String id,
    required String title,
    required String description,
    required String createdAt,
    required String createdBy,
  }) = _Quiz;
  factory Quiz.fromJson(Map<String, dynamic> json) => _$QuizFromJson(json);
}
