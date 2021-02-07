import 'package:dartz/dartz.dart';

import '../failures/value_failures.dart';

Either<ValueFailure<String>, String> validateUsername(String username) {
  if (username.isEmpty) {
    return left(ValueFailure.invalidUsername(
        failureMessage: "Username must not be empty"));
  } else if (username.length < 3 || username.length > 10) {
    return left(ValueFailure.invalidUsername(
        failureMessage: "Username must contain 3 - 10 characters"));
  } else {
    return right(username);
  }
}

Either<ValueFailure<String>, String> validatePassword(String password) {
  if (password.isEmpty) {
    return left(ValueFailure.invalidUsername(
        failureMessage: "Password must not be empty"));
  } else if (password.length < 3 || password.length > 10) {
    return left(ValueFailure.invalidUsername(
        failureMessage: "Password must contain 3 - 10 characters"));
  } else {
    return right(password);
  }
}
