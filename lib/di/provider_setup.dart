import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app/application/use_case/login/regiser_with_email_and_password.dart';
import 'package:flutter_app/application/use_case/login/sign_in_with_email_and_password.dart';
import 'package:flutter_app/application/use_case/login/sign_in_with_google.dart';
import 'package:flutter_app/application/use_case/login/validator_email.dart';
import 'package:flutter_app/application/use_case/login/validator_password.dart';
import 'package:flutter_app/application/use_case/login_use_cases.dart';
import 'package:flutter_app/application/view_model/login/login_viewmodel.dart';
import 'package:flutter_app/domain/repository/auth_repository.dart';
import 'package:flutter_app/infrastructure/data_source/auth_helper.dart';
import 'package:flutter_app/infrastructure/repository/auth_repository_impl.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> globalProvider = [
  ...independentModels,
  ...dependentModels,
  ...viewModels,
];

List<SingleChildWidget> independentModels = [
  Provider<FirebaseAuth>(
    create: (context) => FirebaseAuth.instance,
  ),
  Provider<GoogleSignIn>(
    create: (context) => GoogleSignIn(
      clientId:
          '941885027009-c9krbs820ri6si5bndk3f79ovgtgs60r.apps.googleusercontent.com',
    ),
  ),
];

List<SingleChildWidget> dependentModels = [
  ProxyProvider2<FirebaseAuth, GoogleSignIn, AuthHelper>(
    update: (context, firebaseAuth, googleSignIn, _) =>
        AuthHelper(firebaseAuth, googleSignIn),
  ),
  ProxyProvider<AuthHelper, AuthRepository>(
    update: (context, authHelper, _) => AuthRepositoryImpl(authHelper),
  ),
  ProxyProvider<AuthRepository, LoginUseCases>(
    update: (context, repository, _) => LoginUseCases(
      validatorEmail: ValidatorEmail(),
      validatorPassword: ValidatorPassword(),
      registerWithEmailAndPassword: RegisterWithEmailAndPassword(repository),
      signInWithEmailAndPassword: SignInWithEmailAndPassword(repository),
      signInWithGoogle: SignInWithGoogle(repository),
    ),
  )
];

List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider<LoginViewModel>(
    create: (context) => LoginViewModel(
      context.read<LoginUseCases>(),
    ),
  ),
];
