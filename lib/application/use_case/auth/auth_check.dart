// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_app/domain/auth/entity/user.dart';
import 'package:flutter_app/domain/auth/repository/auth_repository.dart';
import 'package:flutter_app/infrastructure/core/result.dart';

class AuthCheck {
  AuthRepository repository;

  AuthCheck(this.repository);

  Future<Result<User>> call() async {
    final result = await repository.getSignedInUser();
    return result.when(
      sucess: (data) => Result.sucess(data),
      failure: (message) {
        return Result.failure(message);
      },
    );
  }
}
