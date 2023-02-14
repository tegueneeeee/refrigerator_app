import 'package:flutter_app/application/use_case/auth/sign_in_form/regiser_with_email_and_password.dart';
import 'package:flutter_app/application/use_case/auth/sign_in_form/sign_in_with_email_and_password.dart';
import 'package:flutter_app/application/use_case/auth/sign_in_form/sign_in_with_google.dart';

class SignInFormUseCases {
  final RegisterWithEmailAndPassword registerWithEmailAndPassword;
  final SignInWithEmailAndPassword signInWithEmailAndPassword;
  final SignInWithGoogle signInWithGoogle;

  SignInFormUseCases({
    required this.registerWithEmailAndPassword,
    required this.signInWithEmailAndPassword,
    required this.signInWithGoogle,
  });
}
