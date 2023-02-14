// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_app/application/use_case/auth/auth_check.dart';
import 'package:flutter_app/application/use_case/auth/sign_in_form_use_cases.dart';
import 'package:flutter_app/application/use_case/auth/sign_out.dart';

class AuthUseCases {
  final SignInFormUseCases signInFormUseCases;
  final AuthCheck authCheck;
  final SignOut signOut;

  AuthUseCases({
    required this.signInFormUseCases,
    required this.authCheck,
    required this.signOut,
  });
}
