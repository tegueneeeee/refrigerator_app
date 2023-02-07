import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';

@freezed
class Auth with _$Auth {
  factory Auth({
    required String emailAddress,
    required String password,
  }) = _Auth;
}
