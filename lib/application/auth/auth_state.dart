import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState.initial() = Initial;
  factory AuthState.authenticated() = Authenticated;
  factory AuthState.unauthenticated() = Unauthenticated;
}
