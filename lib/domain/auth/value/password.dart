import 'package:freezed_annotation/freezed_annotation.dart';

part 'password.freezed.dart';

@freezed
class Password with _$Password {
  const Password._();
  const factory Password({
    required String value,
  }) = _Password;

  factory Password.empty() => const Password(value: "");

  bool get isValid => value.length >= 6;
}

class PasswordConverter implements JsonConverter<Password, String> {
  const PasswordConverter();

  @override
  Password fromJson(String value) {
    return Password(value: value);
  }

  @override
  String toJson(Password password) {
    return password.value;
  }
}
