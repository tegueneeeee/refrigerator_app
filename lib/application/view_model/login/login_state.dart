import 'package:flutter/material.dart';
import 'package:flutter_app/domain/entity/auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState.initial({
    required Auth auth,
    required AutovalidateMode showValidateMessageMode,
    required bool isSubmitting,
    required bool validatedEmail,
    required bool validatedPassword,
    required String? errorMessage,
  }) = _LoginState;
}
