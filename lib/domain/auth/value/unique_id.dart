import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'unique_id.freezed.dart';

@freezed
class UniqueId with _$UniqueId {
  const factory UniqueId({
    required String value,
  }) = _UniqueId;
  factory UniqueId.generate() => UniqueId(value: const Uuid().v1());
}
