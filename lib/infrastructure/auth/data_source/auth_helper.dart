import 'package:dartz/dartz.dart';
import 'package:flutter_app/domain/auth/entity/user.dart' as entity;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app/domain/auth/value/email_address.dart';
import 'package:flutter_app/domain/auth/value/password.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_app/infrastructure/core/result.dart';

class AuthHelper {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  AuthHelper(
    this._firebaseAuth,
    this._googleSignIn,
  );

  Future<Result<entity.User>> getSignedInUser() async {
    try {
      final currentUser = _firebaseAuth.currentUser;
      if (currentUser != null) {
        return Result.sucess(entity.User.fromUniqueString(currentUser.uid));
      } else {
        return Result.failure("User is Null");
      }
    } catch (e) {
      return Result.failure("$e");
    }
  }

  Future<Result<Unit>> createUserWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddress.value,
        password: password.value,
      );
      return Result.sucess(unit);
    } catch (e) {
      return Result.failure("$e");
    }
  }

  Future<Result<Unit>> signInWIthEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddress.value,
        password: password.value,
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
      final googleUserAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.credential(
        idToken: googleUserAuthentication.idToken,
        accessToken: googleUserAuthentication.accessToken,
      );
      return _firebaseAuth
          .signInWithCredential(authCredential)
          .then((_) => Result.sucess(unit));
    } catch (e) {
      return Result.failure("$e");
    }
  }

  Future<Result<Unit>> signOut() async {
    try {
      return Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]).then((_) => Result.sucess(unit));
    } catch (e) {
      return Result.failure("$e");
    }
  }
}
