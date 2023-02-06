import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  factory Result.sucess(T data) = Sucess;
  factory Result.failure(String message) = Failure;
}
