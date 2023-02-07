import 'package:dartz/dartz.dart';
import 'package:flutter_app/domain/entity/auth.dart';
import 'package:flutter_app/infrastructure/data_source/result.dart';

abstract class AuthRepository {
  Future<Result<Unit>> registerWIthEmailAndPassword({
    required Auth auth,
  });
  Future<Result<Unit>> signInWIthEmailAndPassword({
    required Auth auth,
  });
  Future<Result<Unit>> signInWithGoogle();
}
