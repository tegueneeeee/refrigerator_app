import 'package:flutter/material.dart';
import 'package:flutter_app/domain/auth/value/email_address.dart';
import 'package:flutter_app/domain/auth/value/password.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState.initial({
    required AutovalidateMode showValidateMessageMode,
    required EmailAddress emailAddress,
    required Password password,
    required bool isSubmitting,
    required bool validatedEmail,
    required bool validatedPassword,
    required String? errorMessage,
  }) = _LoginState;
}
