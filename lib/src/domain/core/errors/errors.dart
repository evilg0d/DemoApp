import 'package:demo_app/src/domain/core/failures/value_failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point, terminating application.';
    return Error.safeToString('$explanation Failure: $valueFailure');
  }
}
