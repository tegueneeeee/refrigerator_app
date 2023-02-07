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
  Auth get auth => throw _privateConstructorUsedError;
  AutovalidateMode get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get validatedEmail => throw _privateConstructorUsedError;
  bool get validatedPassword => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Auth auth, AutovalidateMode showErrorMessages,
            bool isSubmitting, bool validatedEmail, bool validatedPassword)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Auth auth, AutovalidateMode showErrorMessages,
            bool isSubmitting, bool validatedEmail, bool validatedPassword)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Auth auth, AutovalidateMode showErrorMessages,
            bool isSubmitting, bool validatedEmail, bool validatedPassword)?
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
      {Auth auth,
      AutovalidateMode showErrorMessages,
      bool isSubmitting,
      bool validatedEmail,
      bool validatedPassword});

  $AuthCopyWith<$Res> get auth;
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
    Object? auth = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? validatedEmail = null,
    Object? validatedPassword = null,
  }) {
    return _then(_value.copyWith(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Auth,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
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
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthCopyWith<$Res> get auth {
    return $AuthCopyWith<$Res>(_value.auth, (value) {
      return _then(_value.copyWith(auth: value) as $Val);
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
      {Auth auth,
      AutovalidateMode showErrorMessages,
      bool isSubmitting,
      bool validatedEmail,
      bool validatedPassword});

  @override
  $AuthCopyWith<$Res> get auth;
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
    Object? auth = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? validatedEmail = null,
    Object? validatedPassword = null,
  }) {
    return _then(_$_LoginState(
      auth: null == auth
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as Auth,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode,
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
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  _$_LoginState(
      {required this.auth,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.validatedEmail,
      required this.validatedPassword});

  @override
  final Auth auth;
  @override
  final AutovalidateMode showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final bool validatedEmail;
  @override
  final bool validatedPassword;

  @override
  String toString() {
    return 'LoginState.initial(auth: $auth, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, validatedEmail: $validatedEmail, validatedPassword: $validatedPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.validatedEmail, validatedEmail) ||
                other.validatedEmail == validatedEmail) &&
            (identical(other.validatedPassword, validatedPassword) ||
                other.validatedPassword == validatedPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auth, showErrorMessages,
      isSubmitting, validatedEmail, validatedPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Auth auth, AutovalidateMode showErrorMessages,
            bool isSubmitting, bool validatedEmail, bool validatedPassword)
        initial,
  }) {
    return initial(auth, showErrorMessages, isSubmitting, validatedEmail,
        validatedPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Auth auth, AutovalidateMode showErrorMessages,
            bool isSubmitting, bool validatedEmail, bool validatedPassword)?
        initial,
  }) {
    return initial?.call(auth, showErrorMessages, isSubmitting, validatedEmail,
        validatedPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Auth auth, AutovalidateMode showErrorMessages,
            bool isSubmitting, bool validatedEmail, bool validatedPassword)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(auth, showErrorMessages, isSubmitting, validatedEmail,
          validatedPassword);
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
      {required final Auth auth,
      required final AutovalidateMode showErrorMessages,
      required final bool isSubmitting,
      required final bool validatedEmail,
      required final bool validatedPassword}) = _$_LoginState;

  @override
  Auth get auth;
  @override
  AutovalidateMode get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  bool get validatedEmail;
  @override
  bool get validatedPassword;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}