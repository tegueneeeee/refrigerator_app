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
    showErrorMessages: AutovalidateMode.disabled,
    isSubmitting: false,
    validatedEmail: false,
    validatedPassword: false,
  );

  LoginState get state => _state;

  void onEvent(LoginEvent event) {
    event.when(
      emailChanged: _emailChanged,
      passwordChanged: _passwordChanged,
      registerWithEmailAndPasswordPressed: _registerWithEmailAndPasswordPressed,
      signInWithEmailAndPasswordPressed: _signInWithEmailAndPasswordPressed,
      signInWithGooglePressed: _signInWithGooglePressed,
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
    await loginUseCases.registerWithEmailAndPassword(
      _state.auth,
    );
  }

  Future<void> _signInWithEmailAndPasswordPressed() async {
    await loginUseCases.signInWithEmailAndPassword(_state.auth);
  }

  Future<void> _signInWithGooglePressed() async {
    await loginUseCases.signInWithGoogle();
  }
}
