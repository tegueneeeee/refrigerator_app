import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/application/use_case/login_use_cases.dart';
import 'package:flutter_app/application/view_model/login/login_event.dart';
import 'package:flutter_app/application/view_model/login/login_state.dart';
import 'package:flutter_app/domain/entity/auth.dart';

class LoginViewModel with ChangeNotifier {
  final LoginUseCases loginUseCases;

  LoginViewModel(this.loginUseCases);

  LoginState _state = LoginState.initial(
    auth: Auth(emailAddress: "", password: ""),
    showValidateMessageMode: AutovalidateMode.disabled,
    isSubmitting: false,
    validatedEmail: false,
    validatedPassword: false,
    errorMessage: null,
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
      validatedEmail: loginUseCases.validatorEmail(emailString),
    );
    notifyListeners();
  }

  Future<void> _passwordChanged(String passwordString) async {
    _state = state.copyWith(
      validatedPassword: loginUseCases.validatorPassword(passwordString),
    );
    notifyListeners();
  }

  Future<void> _registerWithEmailAndPasswordPressed() async {
    final result =
        await loginUseCases.registerWithEmailAndPassword(_state.auth);
    result.when(
      sucess: (_) => {},
      failure: (message) => {
        _state = state.copyWith(errorMessage: message),
      },
    );
    notifyListeners();
  }

  Future<void> _signInWithEmailAndPasswordPressed() async {
    final result = await loginUseCases.signInWithEmailAndPassword(_state.auth);
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
