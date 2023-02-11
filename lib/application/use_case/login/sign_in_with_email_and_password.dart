import 'package:dartz/dartz.dart';
import 'package:flutter_app/domain/auth/value/email_address.dart';
import 'package:flutter_app/domain/auth/repository/auth_repository.dart';
import 'package:flutter_app/domain/auth/value/password.dart';
import 'package:flutter_app/infrastructure/data_source/result.dart';

class SignInWithEmailAndPassword {
  final AuthRepository repository;

  SignInWithEmailAndPassword(this.repository);

  Future<Result<Unit>> call({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final result = await repository.signInWIthEmailAndPassword(
      emailAddress: emailAddress,
      password: password,
    );
    return result.when(
      sucess: (data) => Result.sucess(data),
      failure: (message) => Result.failure(message),
    );
  }
}
