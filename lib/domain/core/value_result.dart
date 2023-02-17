import 'package:flutter_app/domain/auth/value/auth_value_failure.dart';
import 'package:flutter_app/domain/ingredients/value/ingredients_value_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_result.freezed.dart';

@freezed
class ValueResult<T> with _$ValueResult<T> {
  const factory ValueResult.validate(T validatedValue) = _Validate<T>;
  const factory ValueResult.authFailure(AuthValueFailure failure) =
      _AuthFailure<T>;
  const factory ValueResult.ingredientsFailure(
      IngredientsValueFailure failure) = _IngredientsFailure<T>;
}
