import 'package:dartz/dartz.dart';
import 'package:flutter_app/domain/auth/repository/auth_repository.dart';
import 'package:flutter_app/infrastructure/core/result.dart';

class SignOut {
  AuthRepository repository;

  SignOut(this.repository);

  Future<Result<Unit>> call() async {
    final result = await repository.signOut();
    return result.when(
      sucess: (data) => Result.sucess(data),
      failure: (message) => Result.failure(message),
    );
  }
}
