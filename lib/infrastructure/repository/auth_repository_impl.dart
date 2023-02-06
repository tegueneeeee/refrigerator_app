import 'package:dartz/dartz.dart';
import 'package:flutter_app/domain/entity/auth.dart';
import 'package:flutter_app/domain/repository/auth_repository.dart';
import 'package:flutter_app/infrastructure/data_source/auth_helper.dart';
import 'package:flutter_app/infrastructure/data_source/result.dart';

class AuthRepositoryImpl implements AuthRepositiry {
  final AuthHelper _authHelper;

  AuthRepositoryImpl(this._authHelper);
  // final GoogleSignIn _googleSignIn;
  @override
  Future<Result<Unit>> registerWIthEmailAndPassword({
    required Auth auth,
  }) async {
    final result = await _authHelper.createUserWithEmailAndPassword(auth);
    return result.when(
      sucess: (data) => Result.sucess(data),
      failure: (message) => Result.failure(message),
    );
  }

  @override
  Future<Result<Unit>> signInWIthEmailAndPassword({
    required Auth auth,
  }) {
    // TODO: implement signInWIthEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Result<Unit>> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }
}