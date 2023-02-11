import 'package:freezed_annotation/freezed_annotation.dart';
part 'email_address.freezed.dart';

const emailRegex =
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

@freezed
class EmailAddress with _$EmailAddress {
  @Assert('RegExp(emailRegex).hasMatch(value)')
  factory EmailAddress(String value) = _EmailAddress;
}

class EmailAddressConverter implements JsonConverter<EmailAddress, String> {
  const EmailAddressConverter();

  @override
  EmailAddress fromJson(String value) {
    return EmailAddress(value);
  }

  @override
  String toJson(EmailAddress emailAddress) {
    return emailAddress.value;
  }
}
