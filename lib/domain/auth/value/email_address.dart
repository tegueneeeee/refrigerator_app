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

  bool get isValid => value.isNotEmpty && RegExp(emailRegex).hasMatch(value);
}

class EmailAddressConverter implements JsonConverter<EmailAddress, String> {
  const EmailAddressConverter();

  @override
  EmailAddress fromJson(String value) {
    return EmailAddress(value: value);
  }

  @override
  String toJson(EmailAddress emailAddress) {
    return emailAddress.value;
  }
}
