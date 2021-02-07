import 'package:dartz/dartz.dart';
import 'package:demo_app/src/domain/auth/i_auth_repository.dart';
import 'package:demo_app/src/domain/core/failures/api_failure.dart';
import 'package:demo_app/src/domain/core/value_objects/value_objects.dart';
import 'package:demo_app/src/infrastructure/auth/auth_apis.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository extends IAuthRepository {
  final AuthApis _authApis;

  AuthRepository(this._authApis);

  @override
  Future<Either<APIFailure, Unit>> loginUser(
      Username username, Password password) async {
    try {
      String userName = username.getOrEmpty();
      String pass = password.getOrEmpty();

      await _authApis.validateUser(userName, pass);
      return right(unit);
    } catch (e) {
      return left(APIFailure.userNotFound("Username '$username' not found."));
    }
  }
}
