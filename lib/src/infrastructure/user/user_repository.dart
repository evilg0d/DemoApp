import 'package:dartz/dartz.dart';
import 'package:demo_app/src/domain/core/failures/api_failure.dart';
import 'package:demo_app/src/domain/user/i_user_repository.dart';
import 'package:demo_app/src/domain/user/tournament_response.dart';
import 'package:demo_app/src/domain/user/user.dart';
import 'package:demo_app/src/infrastructure/user/user_apis.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IUserRepository)
class UserRepository extends IUserRepository {
  final UserApis _userApis;

  UserRepository(this._userApis);

  @override
  Future<Either<APIFailure, TournamentResponse>> getTournaments(String cursor) async {
    try {
      final result = await _userApis.getTournaments(cursor);
      return right(result);
    } catch (e) {
      return left(APIFailure.serverError("Something went wrong please try again."));
    }
  }

  @override
  Future<Either<APIFailure, User>> getUserData(String username) async {
    try {
      final result = await _userApis.getUserInfo(username);
      return right(result);
    } catch (e) {
      return left(APIFailure.userNotFound("Username '$username' not found."));
    }
  }
}
