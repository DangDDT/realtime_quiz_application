// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_user.freezed.dart';
part 'auth_user.g.dart';

@Freezed(toJson: false)
abstract class AuthUser with _$AuthUser {
  @JsonSerializable(fieldRename: FieldRename.snake, createToJson: false)
  const factory AuthUser({required String id}) = _AuthUser;

  factory AuthUser.fromJson(Map<String, dynamic> json) =>
      _$AuthUserFromJson(json);
}
