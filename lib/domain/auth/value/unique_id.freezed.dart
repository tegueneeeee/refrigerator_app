// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unique_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UniqueId {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UniqueIdCopyWith<UniqueId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniqueIdCopyWith<$Res> {
  factory $UniqueIdCopyWith(UniqueId value, $Res Function(UniqueId) then) =
      _$UniqueIdCopyWithImpl<$Res, UniqueId>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$UniqueIdCopyWithImpl<$Res, $Val extends UniqueId>
    implements $UniqueIdCopyWith<$Res> {
  _$UniqueIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UniqueIdCopyWith<$Res> implements $UniqueIdCopyWith<$Res> {
  factory _$$_UniqueIdCopyWith(
          _$_UniqueId value, $Res Function(_$_UniqueId) then) =
      __$$_UniqueIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_UniqueIdCopyWithImpl<$Res>
    extends _$UniqueIdCopyWithImpl<$Res, _$_UniqueId>
    implements _$$_UniqueIdCopyWith<$Res> {
  __$$_UniqueIdCopyWithImpl(
      _$_UniqueId _value, $Res Function(_$_UniqueId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_UniqueId(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UniqueId implements _UniqueId {
  const _$_UniqueId({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'UniqueId(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UniqueId &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UniqueIdCopyWith<_$_UniqueId> get copyWith =>
      __$$_UniqueIdCopyWithImpl<_$_UniqueId>(this, _$identity);
}

abstract class _UniqueId implements UniqueId {
  const factory _UniqueId({required final String value}) = _$_UniqueId;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_UniqueIdCopyWith<_$_UniqueId> get copyWith =>
      throw _privateConstructorUsedError;
}
