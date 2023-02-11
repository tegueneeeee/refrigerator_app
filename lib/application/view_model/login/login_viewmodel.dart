import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/application/use_case/login_use_cases.dart';
import 'package:flutter_app/application/view_model/login/login_event.dart';
import 'package:flutter_app/application/view_model/login/login_state.dart';
import 'package:flutter_app/domain/auth/value/email_address.dart';
import 'package:flutter_app/domain/auth/value/password.dart';

class LoginViewModel with ChangeNotifier {
  final LoginUseCases loginUseCases;

  LoginViewModel(this.loginUseCases);

  LoginState _state = LoginState.initial(
    showValidateMessageMode: AutovalidateMode.disabled,
    isSubmitting: false,
    validatedEmail: false,
    validatedPassword: false,
    errorMessage: null,
    emailAddress: EmailAddress(""),
    password: Password(""),
  );

  LoginState get state => _state;

  void onEvent(LoginEvent event) {
    event.when(
      emailChanged: _emailChanged,
      passwordChanged: _passwordChanged,
      registerWithEmailAndPasswordPressed: _registerWithEmailAndPasswordPressed,
      signInWithEmailAndPasswordPressed: _signInWithEmailAndPasswordPressed,
      signInWithGooglePressed: _signInWithGooglePressed,
      setErrorMessageNull: _setErrorMessageNull,
    );
  }

  Future<void> _emailChanged(String emailString) async {
    _state = state.copyWith(
      emailAddress: EmailAddress(emailString),
      validatedEmail: loginUseCases.validatorEmail(emailString),
    );
    notifyListeners();
  }

  Future<void> _passwordChanged(String passwordString) async {
    final result = loginUseCases.validatorPassword(passwordString);

    // state = state.copyWith(
    //   password: Password(passwordString),
    //   validatedPassword: loginUseCases.validatorPassword(passwordString),
    // );
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
        _state = state.copyWith(errorMessage: message),
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
        _state = state.copyWith(errorMessage: message),
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
