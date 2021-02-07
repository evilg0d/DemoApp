import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidUsername(
      {@required String failureMessage}) = InvalidUsername<T>;

  const factory ValueFailure.invalidPassword(
      {@required String failureMessage}) = InvalidPassword<T>;

  const factory ValueFailure.empty({@required T failedValue}) = Empty<T>;
}
