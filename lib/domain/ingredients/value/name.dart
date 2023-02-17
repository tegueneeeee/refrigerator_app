import 'package:freezed_annotation/freezed_annotation.dart';

part 'name.freezed.dart';

@freezed
class Name with _$Name {
  const Name._();
  const factory Name({
    required String input,
  }) = _Name;

  static const maxLength = 30;

  // ValueResult<String> get value {
  //   return validateMaxStringLength(input, maxLength).when(
  //     validate: (_) => validateStringNotEmpty(input).when(
  //       validate: (_) => validateSingleLine(input),
  //       invalidate: (invalidatedValue) =>
  //           ValueResult.invalidate(invalidatedValue),
  //     ),
  //     invalidate: (invalidatedValue) =>
  //         ValueResult.invalidate(invalidatedValue),
  //   );
  // }
}
