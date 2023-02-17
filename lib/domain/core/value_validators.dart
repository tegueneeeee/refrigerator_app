// import 'package:flutter_app/domain/core/value_failures.dart';
// import 'package:flutter_app/domain/core/value_result.dart';

// ValueResult<String> validateMaxStringLength(
//   String input,
//   int maxLength,
// ) {
//   if (input.length <= maxLength) {
//     return ValueResult.validate(input);
//   } else {
//     return const ValueResult.failure(
//       ValueFailure.exceedingLength(),
//     );
//   }
// }

// ValueResult<String> validateStringNotEmpty(String input) {
//   if (input.isNotEmpty) {
//     return ValueResult.validate(input);
//   } else {
//     return const ValueResult.failure(ValueFailure.empty());
//   }
// }

// ValueResult<String> validateSingleLine(String input) {
//   if (!input.contains("\n")) {
//     return ValueResult.validate(input);
//   } else {
//     return const ValueResult.failure(
//       ValueFailure.multiLine(),
//     );
//   }
// }

// ValueResult<List> validateMaxListLength(
//   List input,
//   int maxLeng,
// ) {
//   if (input.length <= maxLeng) {
//     return ValueResult.validate(input);
//   } else {
//     return const ValueResult.failure(ValueFailure.listTooLong());
//   }
// }
