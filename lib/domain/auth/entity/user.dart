import 'package:flutter_app/domain/auth/value/unique_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required UniqueId id,
  }) = _User;
  factory User.fromUniqueString(String uniqueId) {
    return User(id: UniqueId(value: uniqueId));
  }
}
