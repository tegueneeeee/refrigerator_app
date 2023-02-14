import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/application/auth/sign_in_form/sign_in_form_event.dart';
import 'package:flutter_app/application/auth/sign_in_form/sign_in_form_state.dart';
import 'package:flutter_app/application/use_case/login_use_cases.dart';
import 'package:flutter_app/domain/auth/value/email_address.dart';
import 'package:flutter_app/domain/auth/value/password.dart';

class SignInFormViewModel with ChangeNotifier {
  final LoginUseCases loginUseCases;

  SignInFormViewModel(this.loginUseCases);

  SignInFormState _state = SignInFormState.initial(
    showValidateMessageMode: AutovalidateMode.disabled,
    isSubmitting: false,
    errorMessage: null,
    emailAddress: EmailAddress.empty(),
    password: Password.empty(),
  );

  SignInFormState get state => _state;

  void onEvent(SignInFormEvent event) {
    event.when(
      emailChanged: _emailChanged,
      passwordChanged: _passwordChanged,
      registerWithEmailAndPasswordPressed: _registerWithEmailAndPasswordPressed,
      signInWithEmailAndPasswordPressed: _signInWithEmailAndPasswordPressed,
      signInWithGooglePressed: _signInWithGooglePressed,
      setErrorMessageNull: _setErrorMessageNull,
    );
  }

  Future<void> _emailChanged(String emailAddressString) async {
    final emailAddress = EmailAddress(value: emailAddressString);
    _state = state.copyWith(
      emailAddress: emailAddress,
    );
    notifyListeners();
  }

  Future<void> _passwordChanged(String passwordString) async {
    final password = Password(value: passwordString);
    _state = state.copyWith(
      password: password,
    );
    notifyListeners();
  }

  Future<void> _registerWithEmailAndPasswordPressed() async {
    final result = await loginUseCases.registerWithEmailAndPassword(
      emailAddress: _state.emailAddress,
      password: _state.password,
    );
    result.when(
      sucess: (_) => {},
      failure: (message) => {
        _state = state.copyWith(
            showValidateMessageMode: AutovalidateMode.always,
            errorMessage: message),
      },
    );
    notifyListeners();
  }

  Future<void> _signInWithEmailAndPasswordPressed() async {
    final result = await loginUseCases.signInWithEmailAndPassword(
      emailAddress: _state.emailAddress,
      password: _state.password,
    );
    result.when(
      sucess: (_) => {},
      failure: (message) => {
        _state = state.copyWith(
          showValidateMessageMode: AutovalidateMode.always,
          errorMessage: message,
        ),
      },
    );
    notifyListeners();
  }

  Future<void> _signInWithGooglePressed() async {
    final result = await loginUseCases.signInWithGoogle();
    result.when(
      sucess: (_) => {},
      failure: (message) => {
        _state = state.copyWith(errorMessage: message),
      },
    );
    notifyListeners();
  }

  void _setErrorMessageNull() {
    _state = state.copyWith(errorMessage: null);
  }
}