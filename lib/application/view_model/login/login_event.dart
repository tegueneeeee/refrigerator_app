import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.freezed.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.emailChanged(String emailString) = EmailChanged;
  const factory LoginEvent.passwordChanged(String passwordString) =
      PassowordChanged;
  const factory LoginEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
  const factory LoginEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;
  const factory LoginEvent.signInWithGooglePressed() = SignInWithGooglePressed;
}
