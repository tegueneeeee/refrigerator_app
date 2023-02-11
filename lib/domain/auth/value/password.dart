import 'package:freezed_annotation/freezed_annotation.dart';

part 'password.freezed.dart';

@freezed
class Password with _$Password {
  @Assert('value.length >= 6')
  const factory Password(String value) = _Password;
}

class PasswordConverter implements JsonConverter<Password, String> {
  const PasswordConverter();

  @override
  Password fromJson(String value) {
    return Password(value);
  }

  @override
  String toJson(Password password) {
    return password.value;
  }
}
