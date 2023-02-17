import 'package:flutter_app/domain/auth/value/auth_value_failure.dart';
import 'package:flutter_app/domain/core/value_result.dart';

ValueResult<String> validateEmailAddress(String input) {
  const emailRegex =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  if (RegExp(emailRegex).hasMatch(input)) {
    return ValueResult.validate(input);
  } else {
    return const ValueResult.authFailure(AuthValueFailure.invalidEmail());
  }
}

ValueResult<String> validatePassword(String input) {
  if (input.length >= 6) {
    return ValueResult.validate(input);
  } else {
    return const ValueResult.authFailure(AuthValueFailure.shortPassword());
  }
}

ValueResult<String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return ValueResult.validate(input);
  } else {
    return const ValueResult.authFailure(AuthValueFailure.emptyString());
  }
}
