import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app/application/auth/sign_in_form/sign_in_form_view_model.dart';
import 'package:flutter_app/application/use_case/auth/sign_in_form/regiser_with_email_and_password.dart';
import 'package:flutter_app/application/use_case/auth/sign_in_form/sign_in_with_email_and_password.dart';
import 'package:flutter_app/application/use_case/auth/sign_in_form/sign_in_with_google.dart';
import 'package:flutter_app/application/use_case/login_use_cases.dart';
import 'package:flutter_app/domain/auth/repository/auth_repository.dart';
import 'package:flutter_app/infrastructure/auth/data_source/auth_helper.dart';
import 'package:flutter_app/infrastructure/auth/repository/auth_repository_impl.dart';
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
      registerWithEmailAndPassword: RegisterWithEmailAndPassword(repository),
      signInWithEmailAndPassword: SignInWithEmailAndPassword(repository),
      signInWithGoogle: SignInWithGoogle(repository),
    ),
  )
];

List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider<SignInFormViewModel>(
    create: (context) => SignInFormViewModel(
      context.read<LoginUseCases>(),
    ),
  ),
];
