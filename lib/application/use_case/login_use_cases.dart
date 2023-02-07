// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_app/application/use_case/login/regiser_with_email_and_password.dart';
import 'package:flutter_app/application/use_case/login/sign_in_with_email_and_password.dart';
import 'package:flutter_app/application/use_case/login/sign_in_with_google.dart';
import 'package:flutter_app/application/use_case/login/validator_email.dart';
import 'package:flutter_app/application/use_case/login/validator_password.dart';

class LoginUseCases {
  final ValidatorEmail validatorEmail;
  final ValidatorPassword validatorPassword;
  final RegisterWithEmailAndPassword registerWithEmailAndPassword;
  final SignInWithEmailAndPassword signInWithEmailAndPassword;
  final SignInWithGoogle signInWithGoogle;

  LoginUseCases({
    required this.validatorEmail,
    required this.validatorPassword,
    required this.registerWithEmailAndPassword,
    required this.signInWithEmailAndPassword,
    required this.signInWithGoogle,
  });
}
