import 'package:dartz/dartz.dart';
import 'package:demo_app/src/domain/core/failures/value_failures.dart';
import 'package:demo_app/src/domain/core/validators/value_validators.dart';
import 'package:demo_app/src/domain/core/value_objects/base_value_object.dart';

class Username extends BaseValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  const Username._(this.value);

  @override
  String getEmpty() => '';

  factory Username(String input) {
    if (input == null) input = '';
    return Username._(validateUsername(input.trim()));
  }
}


class Password extends BaseValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  const Password._(this.value);

  @override
  String getEmpty() => '';

  factory Password(String input) {
    if (input == null) input = '';
    return Password._(validatePassword(input.trim()));
  }
}