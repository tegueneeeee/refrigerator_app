import 'package:dartz/dartz.dart';
import 'package:flutter_app/domain/entity/auth.dart';
import 'package:flutter_app/domain/repository/auth_repository.dart';
import 'package:flutter_app/infrastructure/data_source/result.dart';

class RegisterWithEmailAndPassword {
  final AuthRepository repository;

  RegisterWithEmailAndPassword(this.repository);

  Future<Result<Unit>> call(Auth auth) async {
    final result = await repository.registerWIthEmailAndPassword(
      auth: auth,
    );
    return result.when(
      sucess: (data) => Result.sucess(data),
      failure: (message) => Result.failure(message),
    );
  }
}
