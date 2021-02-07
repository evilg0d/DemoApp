import 'package:demo_app/src/domain/user/tournament.dart';

class TournamentResponse {
  String cursor;
  List<Tournament> tournaments;

  TournamentResponse({this.cursor, this.tournaments});
}