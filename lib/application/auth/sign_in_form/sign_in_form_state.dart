import 'package:flutter/material.dart';
import 'package:flutter_app/domain/auth/value/email_address.dart';
import 'package:flutter_app/domain/auth/value/password.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_form_state.freezed.dart';

@freezed
class SignInFormState with _$SignInFormState {
  factory SignInFormState.initial({
    required AutovalidateMode showValidateMessageMode,
    required EmailAddress emailAddress,
    required Password password,
    required bool isSubmitting,
    required String? errorMessage,
  }) = _SignInFormState;
}
