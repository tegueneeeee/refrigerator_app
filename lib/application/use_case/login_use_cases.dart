// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_app/application/use_case/auth/sign_in_form/regiser_with_email_and_password.dart';
import 'package:flutter_app/application/use_case/auth/sign_in_form/sign_in_with_email_and_password.dart';
import 'package:flutter_app/application/use_case/auth/sign_in_form/sign_in_with_google.dart';

class LoginUseCases {
  final RegisterWithEmailAndPassword registerWithEmailAndPassword;
  final SignInWithEmailAndPassword signInWithEmailAndPassword;
  final SignInWithGoogle signInWithGoogle;

  LoginUseCases({
    required this.registerWithEmailAndPassword,
    required this.signInWithEmailAndPassword,
    required this.signInWithGoogle,
  });
}
