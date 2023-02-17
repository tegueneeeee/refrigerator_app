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

class UniqueIdConverter implements JsonConverter<UniqueId, String> {
  const UniqueIdConverter();

  @override
  UniqueId fromJson(String value) {
    return UniqueId(value: value);
  }

  @override
  String toJson(UniqueId uniqueId) {
    return uniqueId.value;
  }
}
