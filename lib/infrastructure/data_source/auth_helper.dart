// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:flutter_app/domain/entity/auth.dart';
import 'package:flutter_app/infrastructure/data_source/result.dart';

class AuthHelper {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  AuthHelper(
    this._firebaseAuth,
    this._googleSignIn,
  );

  Future<Result<Unit>> createUserWithEmailAndPassword(Auth auth) async {
    final emailAddress = auth.emailAddress;
    final password = auth.password;
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return Result.sucess(unit);
    } catch (e) {
      return Result.failure("$e");
    }
  }

  Future<Result<Unit>> signInWIthEmailAndPassword(Auth auth) async {
    final emailAddress = auth.emailAddress;
    final password = auth.password;
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      return Result.sucess(unit);
    } on FirebaseException catch (e) {
      return Result.failure("$e");
    }
  }

  Future<Result<Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return Result.failure("Cancelled By User");
      }
      // final googleUserAuthentication = await googleUser.authentication;
      // final authCredential = GoogleAuthProvider.credential(
      //   idToken: googleUserAuthentication.idToken,
      //   accessToken: googleUserAuthentication.accessToken,
      // );
      // return _firebaseAuth
      //     .signInWithCredential(authCredential)
      //     .then((value) => Result.sucess(unit));
      return Result.sucess(unit);
    } catch (e) {
      return Result.failure("$e");
    }
  }
}
