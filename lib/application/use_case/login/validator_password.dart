class ValidatorPassword {
  bool call(String passwordString) {
    if (passwordString.length >= 6) {
      return true;
    } else {
      return false;
    }
  }
}
