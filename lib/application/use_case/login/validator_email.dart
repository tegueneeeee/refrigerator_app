class ValidatorEmail {
  bool call(String emailString) {
    const emailRegex =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    if (RegExp(emailRegex).hasMatch(emailString)) {
      return true;
    } else {
      return false;
    }
  }
}
