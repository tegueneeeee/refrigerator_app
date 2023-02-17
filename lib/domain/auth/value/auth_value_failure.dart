import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_value_failure.freezed.dart';

@freezed
class AuthValueFailure<T> with _$AuthValueFailure<T> {
  const AuthValueFailure._();
  const factory AuthValueFailure.invalidEmail() = InvalidEmail<T>;
  const factory AuthValueFailure.shortPassword() = ShortPassword<T>;
  const factory AuthValueFailure.emptyString() = EmptyString<T>;

  String get message => when(
        invalidEmail: () => "Invalid Email",
        shortPassword: () => "Invalid Password",
        emptyString: () => "Can't not be empty",
      );
}
