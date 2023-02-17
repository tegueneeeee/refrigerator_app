import 'package:flutter_app/domain/auth/value/auth_value_validators.dart';
import 'package:flutter_app/domain/core/value_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'email_address.freezed.dart';

const emailRegex =
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

@freezed
abstract class EmailAddress with _$EmailAddress {
  const EmailAddress._();

  const factory EmailAddress({
    required String value,
  }) = _EmailAddress;

  factory EmailAddress.empty() => const EmailAddress(value: "");

  ValueResult<String> get validate {
    return validateStringNotEmpty(value).maybeWhen(
      validate: (validatedValue) => validateEmailAddress(validatedValue),
      orElse: () => validateStringNotEmpty(value),
    );
  }
}

class EmailAddressConverter implements JsonConverter<EmailAddress, String> {
  const EmailAddressConverter();

  @override
  EmailAddress fromJson(String input) {
    return EmailAddress(value: input);
  }

  @override
  String toJson(EmailAddress emailAddress) {
    return emailAddress.value;
  }
}
