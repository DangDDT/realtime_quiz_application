import 'package:freezed_annotation/freezed_annotation.dart';

enum SessionStateEnum {
  @JsonValue('WAITING')
  waiting._('WAITING'),
  @JsonValue('ACTIVE')
  active._('ACTIVE'),
  @JsonValue('CANCELED')
  canceled._('CANCELED'),
  @JsonValue('FINISHED')
  finished._('FINISHED');

  final String code;

  const SessionStateEnum._(this.code);

  static SessionStateEnum fromCode(String code) {
    return switch (code) {
      'WAITING' => waiting,
      'ACTIVE' => active,
      'CANCELED' => canceled,
      'FINISHED' => finished,
      _ => throw Exception('Invalid session state code: $code'),
    };
  }
}
