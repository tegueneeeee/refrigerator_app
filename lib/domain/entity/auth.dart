import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';

const emailRegex =
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

@freezed
class Auth with _$Auth {
  @Assert('RegExp(emailRegex).hasMatch(emailAddress)')
  @Assert('password.length >= 6')
  factory Auth({
    required String emailAddress,
    required String password,
  }) = _Auth;
}
