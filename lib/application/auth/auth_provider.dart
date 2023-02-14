import 'package:flutter/foundation.dart';
import 'package:flutter_app/application/auth/auth_event.dart';
import 'package:flutter_app/application/auth/auth_state.dart';
import 'package:flutter_app/application/use_case/auth_use_cases.dart';

class AuthProvider with ChangeNotifier {
  final AuthUseCases authUseCases;

  AuthProvider(this.authUseCases);

  final AuthState _state = AuthState.initial();

  AuthState get state => _state;

  void onEvent(AuthEvent event) {
    event.when(
      authCheckRequested: _authCheckRequested,
      signOutPressed: _signOutPressed,
    );
  }

  Future<void> _authCheckRequested() async {
    final result = await authUseCases.authCheck();
    result.when(
      sucess: (_) => {
        AuthState.authenticated(),
      },
      failure: (message) => {
        AuthState.unauthenticated(),
      },
    );
  }

  Future<void> _signOutPressed() async {
    final result = await authUseCases.signOut();
    result.when(
      sucess: (_) => {
        AuthState.unauthenticated(),
      },
      failure: (message) => {},
    );
  }
}
