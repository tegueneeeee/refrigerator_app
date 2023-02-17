import 'package:flutter_app/domain/auth/value/auth_value_validators.dart';
import 'package:flutter_app/domain/core/value_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'password.freezed.dart';

@freezed
class Password with _$Password {
  const Password._();
  const factory Password({
    required String value,
  }) = _Password;

  factory Password.empty() => const Password(value: "");

  ValueResult<String> get validate {
    return validateStringNotEmpty(value).maybeWhen(
        validate: (validatedValue) => validatePassword(validatedValue),
        orElse: () => validateStringNotEmpty(value));
  }
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
