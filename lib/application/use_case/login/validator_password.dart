import 'package:flutter_app/domain/auth/repository/auth_repository.dart';

class ValidatorPassword {
  final AuthRepository repository;

  ValidatorPassword(this.repository);
  
  bool call(String passwordString) {
    if (passwordString.length >= 6) {
      return true;
    } else {
      return false;
    }
  }
}
