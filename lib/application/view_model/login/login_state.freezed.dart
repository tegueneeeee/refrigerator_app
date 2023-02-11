// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  AutovalidateMode get showValidateMessageMode =>
      throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get validatedEmail => throw _privateConstructorUsedError;
  bool get validatedPassword => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AutovalidateMode showValidateMessageMode,
            EmailAddress emailAddress,
            Password password,
            bool isSubmitting,
            bool validatedEmail,
            bool validatedPassword,
            String? errorMessage)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AutovalidateMode showValidateMessageMode,
            EmailAddress emailAddress,
            Password password,
            bool isSubmitting,
            bool validatedEmail,
            bool validatedPassword,
            String? errorMessage)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AutovalidateMode showValidateMessageMode,
            EmailAddress emailAddress,
            Password password,
            bool isSubmitting,
            bool validatedEmail,
            bool validatedPassword,
            String? errorMessage)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginState value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {AutovalidateMode showValidateMessageMode,
      EmailAddress emailAddress,
      Password password,
      bool isSubmitting,
      bool validatedEmail,
      bool validatedPassword,
      String? errorMessage});

  $EmailAddressCopyWith<$Res> get emailAddress;
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showValidateMessageMode = null,
    Object? emailAddress = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? validatedEmail = null,
    Object? validatedPassword = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      showValidateMessageMode: null == showValidateMessageMode
          ? _value.showValidateMessageMode
          : showValidateMessageMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      validatedEmail: null == validatedEmail
          ? _value.validatedEmail
          : validatedEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      validatedPassword: null == validatedPassword
          ? _value.validatedPassword
          : validatedPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EmailAddressCopyWith<$Res> get emailAddress {
    return $EmailAddressCopyWith<$Res>(_value.emailAddress, (value) {
      return _then(_value.copyWith(emailAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AutovalidateMode showValidateMessageMode,
      EmailAddress emailAddress,
      Password password,
      bool isSubmitting,
      bool validatedEmail,
      bool validatedPassword,
      String? errorMessage});

  @override
  $EmailAddressCopyWith<$Res> get emailAddress;
  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showValidateMessageMode = null,
    Object? emailAddress = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? validatedEmail = null,
    Object? validatedPassword = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_LoginState(
      showValidateMessageMode: null == showValidateMessageMode
          ? _value.showValidateMessageMode
          : showValidateMessageMode // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      validatedEmail: null == validatedEmail
          ? _value.validatedEmail
          : validatedEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      validatedPassword: null == validatedPassword
          ? _value.validatedPassword
          : validatedPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  _$_LoginState(
      {required this.showValidateMessageMode,
      required this.emailAddress,
      required this.password,
      required this.isSubmitting,
      required this.validatedEmail,
      required this.validatedPassword,
      required this.errorMessage});

  @override
  final AutovalidateMode showValidateMessageMode;
  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool isSubmitting;
  @override
  final bool validatedEmail;
  @override
  final bool validatedPassword;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'LoginState.initial(showValidateMessageMode: $showValidateMessageMode, emailAddress: $emailAddress, password: $password, isSubmitting: $isSubmitting, validatedEmail: $validatedEmail, validatedPassword: $validatedPassword, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(
                    other.showValidateMessageMode, showValidateMessageMode) ||
                other.showValidateMessageMode == showValidateMessageMode) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.validatedEmail, validatedEmail) ||
                other.validatedEmail == validatedEmail) &&
            (identical(other.validatedPassword, validatedPassword) ||
                other.validatedPassword == validatedPassword) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      showValidateMessageMode,
      emailAddress,
      password,
      isSubmitting,
      validatedEmail,
      validatedPassword,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AutovalidateMode showValidateMessageMode,
            EmailAddress emailAddress,
            Password password,
            bool isSubmitting,
            bool validatedEmail,
            bool validatedPassword,
            String? errorMessage)
        initial,
  }) {
    return initial(showValidateMessageMode, emailAddress, password,
        isSubmitting, validatedEmail, validatedPassword, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            AutovalidateMode showValidateMessageMode,
            EmailAddress emailAddress,
            Password password,
            bool isSubmitting,
            bool validatedEmail,
            bool validatedPassword,
            String? errorMessage)?
        initial,
  }) {
    return initial?.call(showValidateMessageMode, emailAddress, password,
        isSubmitting, validatedEmail, validatedPassword, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            AutovalidateMode showValidateMessageMode,
            EmailAddress emailAddress,
            Password password,
            bool isSubmitting,
            bool validatedEmail,
            bool validatedPassword,
            String? errorMessage)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(showValidateMessageMode, emailAddress, password,
          isSubmitting, validatedEmail, validatedPassword, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginState value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _LoginState implements LoginState {
  factory _LoginState(
      {required final AutovalidateMode showValidateMessageMode,
      required final EmailAddress emailAddress,
      required final Password password,
      required final bool isSubmitting,
      required final bool validatedEmail,
      required final bool validatedPassword,
      required final String? errorMessage}) = _$_LoginState;

  @override
  AutovalidateMode get showValidateMessageMode;
  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get isSubmitting;
  @override
  bool get validatedEmail;
  @override
  bool get validatedPassword;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
