import 'package:freezed_annotation/freezed_annotation.dart';

part 'description.freezed.dart';

@freezed
class Description with _$Description {
  const Description._();
  const factory Description({
    required String input,
  }) = _Description;

  static const maxLength = 1000;

  // String get value {
  //   return validateMaxStringLength(input, maxLength);
  // }
}
