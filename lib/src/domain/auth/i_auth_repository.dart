import 'package:dartz/dartz.dart';
import 'package:demo_app/src/domain/core/failures/api_failure.dart';
import 'package:demo_app/src/domain/core/value_objects/value_objects.dart';

abstract class IAuthRepository {
  Future<Either<APIFailure, Unit>> loginUser(
      Username username, Password password);
}
