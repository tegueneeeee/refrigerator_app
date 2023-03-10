import 'package:dartz/dartz.dart';
import 'package:flutter_app/domain/auth/repository/auth_repository.dart';
import 'package:flutter_app/infrastructure/core/result.dart';

class SignInWithGoogle {
  final AuthRepository repository;

  SignInWithGoogle(this.repository);

  Future<Result<Unit>> call() async {
    final result = await repository.signInWithGoogle();
    return result.when(
      sucess: (data) => Result.sucess(data),
      failure: (message) => Result.failure(message),
    );
  }
}
