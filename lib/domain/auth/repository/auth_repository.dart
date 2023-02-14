import 'package:dartz/dartz.dart';
import 'package:flutter_app/domain/auth/entity/user.dart';
import 'package:flutter_app/domain/auth/value/email_address.dart';
import 'package:flutter_app/domain/auth/value/password.dart';
import 'package:flutter_app/infrastructure/core/result.dart';

abstract class AuthRepository {
  Future<Result<User>> getSignedInUser();
  Future<Result<Unit>> registerWIthEmailAndPassword({
    @EmailAddressConverter() required EmailAddress emailAddress,
    @PasswordConverter() required Password password,
  });
  Future<Result<Unit>> signInWIthEmailAndPassword({
    @EmailAddressConverter() required EmailAddress emailAddress,
    @PasswordConverter() required Password password,
  });
  Future<Result<Unit>> signInWithGoogle();
  Future<Result<Unit>> signOut();
}
