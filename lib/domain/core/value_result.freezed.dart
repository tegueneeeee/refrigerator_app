// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueResult<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T validatedValue) validate,
    required TResult Function(AuthValueFailure<dynamic> failure) authFailure,
    required TResult Function(IngredientsValueFailure failure)
        ingredientsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T validatedValue)? validate,
    TResult? Function(AuthValueFailure<dynamic> failure)? authFailure,
    TResult? Function(IngredientsValueFailure failure)? ingredientsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T validatedValue)? validate,
    TResult Function(AuthValueFailure<dynamic> failure)? authFailure,
    TResult Function(IngredientsValueFailure failure)? ingredientsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Validate<T> value) validate,
    required TResult Function(_AuthFailure<T> value) authFailure,
    required TResult Function(_IngredientsFailure<T> value) ingredientsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Validate<T> value)? validate,
    TResult? Function(_AuthFailure<T> value)? authFailure,
    TResult? Function(_IngredientsFailure<T> value)? ingredientsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Validate<T> value)? validate,
    TResult Function(_AuthFailure<T> value)? authFailure,
    TResult Function(_IngredientsFailure<T> value)? ingredientsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueResultCopyWith<T, $Res> {
  factory $ValueResultCopyWith(
          ValueResult<T> value, $Res Function(ValueResult<T>) then) =
      _$ValueResultCopyWithImpl<T, $Res, ValueResult<T>>;
}

/// @nodoc
class _$ValueResultCopyWithImpl<T, $Res, $Val extends ValueResult<T>>
    implements $ValueResultCopyWith<T, $Res> {
  _$ValueResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ValidateCopyWith<T, $Res> {
  factory _$$_ValidateCopyWith(
          _$_Validate<T> value, $Res Function(_$_Validate<T>) then) =
      __$$_ValidateCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T validatedValue});
}

/// @nodoc
class __$$_ValidateCopyWithImpl<T, $Res>
    extends _$ValueResultCopyWithImpl<T, $Res, _$_Validate<T>>
    implements _$$_ValidateCopyWith<T, $Res> {
  __$$_ValidateCopyWithImpl(
      _$_Validate<T> _value, $Res Function(_$_Validate<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? validatedValue = freezed,
  }) {
    return _then(_$_Validate<T>(
      freezed == validatedValue
          ? _value.validatedValue
          : validatedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Validate<T> implements _Validate<T> {
  const _$_Validate(this.validatedValue);

  @override
  final T validatedValue;

  @override
  String toString() {
    return 'ValueResult<$T>.validate(validatedValue: $validatedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Validate<T> &&
            const DeepCollectionEquality()
                .equals(other.validatedValue, validatedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(validatedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValidateCopyWith<T, _$_Validate<T>> get copyWith =>
      __$$_ValidateCopyWithImpl<T, _$_Validate<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T validatedValue) validate,
    required TResult Function(AuthValueFailure<dynamic> failure) authFailure,
    required TResult Function(IngredientsValueFailure failure)
        ingredientsFailure,
  }) {
    return validate(validatedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T validatedValue)? validate,
    TResult? Function(AuthValueFailure<dynamic> failure)? authFailure,
    TResult? Function(IngredientsValueFailure failure)? ingredientsFailure,
  }) {
    return validate?.call(validatedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T validatedValue)? validate,
    TResult Function(AuthValueFailure<dynamic> failure)? authFailure,
    TResult Function(IngredientsValueFailure failure)? ingredientsFailure,
    required TResult orElse(),
  }) {
    if (validate != null) {
      return validate(validatedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Validate<T> value) validate,
    required TResult Function(_AuthFailure<T> value) authFailure,
    required TResult Function(_IngredientsFailure<T> value) ingredientsFailure,
  }) {
    return validate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Validate<T> value)? validate,
    TResult? Function(_AuthFailure<T> value)? authFailure,
    TResult? Function(_IngredientsFailure<T> value)? ingredientsFailure,
  }) {
    return validate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Validate<T> value)? validate,
    TResult Function(_AuthFailure<T> value)? authFailure,
    TResult Function(_IngredientsFailure<T> value)? ingredientsFailure,
    required TResult orElse(),
  }) {
    if (validate != null) {
      return validate(this);
    }
    return orElse();
  }
}

abstract class _Validate<T> implements ValueResult<T> {
  const factory _Validate(final T validatedValue) = _$_Validate<T>;

  T get validatedValue;
  @JsonKey(ignore: true)
  _$$_ValidateCopyWith<T, _$_Validate<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthFailureCopyWith<T, $Res> {
  factory _$$_AuthFailureCopyWith(
          _$_AuthFailure<T> value, $Res Function(_$_AuthFailure<T>) then) =
      __$$_AuthFailureCopyWithImpl<T, $Res>;
  @useResult
  $Res call({AuthValueFailure<dynamic> failure});

  $AuthValueFailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$$_AuthFailureCopyWithImpl<T, $Res>
    extends _$ValueResultCopyWithImpl<T, $Res, _$_AuthFailure<T>>
    implements _$$_AuthFailureCopyWith<T, $Res> {
  __$$_AuthFailureCopyWithImpl(
      _$_AuthFailure<T> _value, $Res Function(_$_AuthFailure<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_AuthFailure<T>(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthValueFailure<dynamic>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthValueFailureCopyWith<dynamic, $Res> get failure {
    return $AuthValueFailureCopyWith<dynamic, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_AuthFailure<T> implements _AuthFailure<T> {
  const _$_AuthFailure(this.failure);

  @override
  final AuthValueFailure<dynamic> failure;

  @override
  String toString() {
    return 'ValueResult<$T>.authFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthFailure<T> &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthFailureCopyWith<T, _$_AuthFailure<T>> get copyWith =>
      __$$_AuthFailureCopyWithImpl<T, _$_AuthFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T validatedValue) validate,
    required TResult Function(AuthValueFailure<dynamic> failure) authFailure,
    required TResult Function(IngredientsValueFailure failure)
        ingredientsFailure,
  }) {
    return authFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T validatedValue)? validate,
    TResult? Function(AuthValueFailure<dynamic> failure)? authFailure,
    TResult? Function(IngredientsValueFailure failure)? ingredientsFailure,
  }) {
    return authFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T validatedValue)? validate,
    TResult Function(AuthValueFailure<dynamic> failure)? authFailure,
    TResult Function(IngredientsValueFailure failure)? ingredientsFailure,
    required TResult orElse(),
  }) {
    if (authFailure != null) {
      return authFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Validate<T> value) validate,
    required TResult Function(_AuthFailure<T> value) authFailure,
    required TResult Function(_IngredientsFailure<T> value) ingredientsFailure,
  }) {
    return authFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Validate<T> value)? validate,
    TResult? Function(_AuthFailure<T> value)? authFailure,
    TResult? Function(_IngredientsFailure<T> value)? ingredientsFailure,
  }) {
    return authFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Validate<T> value)? validate,
    TResult Function(_AuthFailure<T> value)? authFailure,
    TResult Function(_IngredientsFailure<T> value)? ingredientsFailure,
    required TResult orElse(),
  }) {
    if (authFailure != null) {
      return authFailure(this);
    }
    return orElse();
  }
}

abstract class _AuthFailure<T> implements ValueResult<T> {
  const factory _AuthFailure(final AuthValueFailure<dynamic> failure) =
      _$_AuthFailure<T>;

  AuthValueFailure<dynamic> get failure;
  @JsonKey(ignore: true)
  _$$_AuthFailureCopyWith<T, _$_AuthFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IngredientsFailureCopyWith<T, $Res> {
  factory _$$_IngredientsFailureCopyWith(_$_IngredientsFailure<T> value,
          $Res Function(_$_IngredientsFailure<T>) then) =
      __$$_IngredientsFailureCopyWithImpl<T, $Res>;
  @useResult
  $Res call({IngredientsValueFailure failure});

  $IngredientsValueFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_IngredientsFailureCopyWithImpl<T, $Res>
    extends _$ValueResultCopyWithImpl<T, $Res, _$_IngredientsFailure<T>>
    implements _$$_IngredientsFailureCopyWith<T, $Res> {
  __$$_IngredientsFailureCopyWithImpl(_$_IngredientsFailure<T> _value,
      $Res Function(_$_IngredientsFailure<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_IngredientsFailure<T>(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as IngredientsValueFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $IngredientsValueFailureCopyWith<$Res> get failure {
    return $IngredientsValueFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_IngredientsFailure<T> implements _IngredientsFailure<T> {
  const _$_IngredientsFailure(this.failure);

  @override
  final IngredientsValueFailure failure;

  @override
  String toString() {
    return 'ValueResult<$T>.ingredientsFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IngredientsFailure<T> &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IngredientsFailureCopyWith<T, _$_IngredientsFailure<T>> get copyWith =>
      __$$_IngredientsFailureCopyWithImpl<T, _$_IngredientsFailure<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T validatedValue) validate,
    required TResult Function(AuthValueFailure<dynamic> failure) authFailure,
    required TResult Function(IngredientsValueFailure failure)
        ingredientsFailure,
  }) {
    return ingredientsFailure(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T validatedValue)? validate,
    TResult? Function(AuthValueFailure<dynamic> failure)? authFailure,
    TResult? Function(IngredientsValueFailure failure)? ingredientsFailure,
  }) {
    return ingredientsFailure?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T validatedValue)? validate,
    TResult Function(AuthValueFailure<dynamic> failure)? authFailure,
    TResult Function(IngredientsValueFailure failure)? ingredientsFailure,
    required TResult orElse(),
  }) {
    if (ingredientsFailure != null) {
      return ingredientsFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Validate<T> value) validate,
    required TResult Function(_AuthFailure<T> value) authFailure,
    required TResult Function(_IngredientsFailure<T> value) ingredientsFailure,
  }) {
    return ingredientsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Validate<T> value)? validate,
    TResult? Function(_AuthFailure<T> value)? authFailure,
    TResult? Function(_IngredientsFailure<T> value)? ingredientsFailure,
  }) {
    return ingredientsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Validate<T> value)? validate,
    TResult Function(_AuthFailure<T> value)? authFailure,
    TResult Function(_IngredientsFailure<T> value)? ingredientsFailure,
    required TResult orElse(),
  }) {
    if (ingredientsFailure != null) {
      return ingredientsFailure(this);
    }
    return orElse();
  }
}

abstract class _IngredientsFailure<T> implements ValueResult<T> {
  const factory _IngredientsFailure(final IngredientsValueFailure failure) =
      _$_IngredientsFailure<T>;

  IngredientsValueFailure get failure;
  @JsonKey(ignore: true)
  _$$_IngredientsFailureCopyWith<T, _$_IngredientsFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
