import 'package:dartz/dartz.dart';
import 'package:demo_app/src/domain/core/errors/errors.dart';
import 'package:demo_app/src/domain/core/failures/value_failures.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
abstract class BaseValueObject<T> {
  const BaseValueObject();

  Either<ValueFailure<T>, T> get value;

  T getOrCrash() =>
      value.fold((f) => throw UnexpectedValueError(f), id); // id = '(r) => r'

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @protected
  T getEmpty();

  T getOrEmpty() => value.fold((f) => getEmpty(), id);

  bool isValid() => value.isRight();

  @override
  String toString() {
    return 'Value{$value}';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is BaseValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
