import 'package:dartz/dartz.dart';
import 'package:flutter_app/domain/auth/value/email_address.dart';
import 'package:flutter_app/domain/auth/value/password.dart';
import 'package:flutter_app/infrastructure/auth/data_source/auth_helper.dart';
import 'package:flutter_app/infrastructure/core/result.dart';
import 'package:flutter_app/domain/auth/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthHelper _authHelper;

  AuthRepositoryImpl(
    this._authHelper,
  );
  @override
  Future<Result<Unit>> registerWIthEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final result = await _authHelper.createUserWithEmailAndPassword(
      emailAddress: emailAddress,
      password: password,
    );
    return result.when(
      sucess: (data) => Result.sucess(data),
      failure: (message) => Result.failure(message),
    );
  }

  @override
  Future<Result<Unit>> signInWIthEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final result = await _authHelper.signInWIthEmailAndPassword(
      emailAddress: emailAddress,
      password: password,
    );
    return result.when(
      sucess: (data) => Result.sucess(data),
      failure: (message) => Result.failure(message),
    );
  }

  @override
  Future<Result<Unit>> signInWithGoogle() async {
    final result = await _authHelper.signInWithGoogle();
    return result.when(
      sucess: (data) => Result.sucess(data),
      failure: (message) => Result.failure(message),
    );
  }

  @override
  Future<Result<bool>> validatorEmailAddress({
    required EmailAddress emailAddress,
  }) async {
    final result =
        await _authHelper.validateEmailAddress(emailAddress: emailAddress);
    return result.when(
      sucess: (data) => Result.sucess(data.isValid),
      failure: (message) => Result.failure(message),
    );
  }

  @override
  Future<Result<bool>> validatorPassword({
    required Password password,
  }) async {
    final result = await _authHelper.validatePassword(password: password);
    return result.when(
      sucess: (data) => Result.sucess(data.isValid),
      failure: (message) => Result.failure(message),
    );
  }
}
