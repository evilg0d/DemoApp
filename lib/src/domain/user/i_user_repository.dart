import 'package:dartz/dartz.dart';
import 'package:demo_app/src/domain/core/failures/api_failure.dart';
import 'package:demo_app/src/domain/user/tournament_response.dart';
import 'package:demo_app/src/domain/user/user.dart';

abstract class IUserRepository {
  Future<Either<APIFailure, User>> getUserData(String username);

  Future<Either<APIFailure, TournamentResponse>> getTournaments(String cursor);
}
