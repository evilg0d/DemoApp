import 'dart:convert';

import 'package:demo_app/src/domain/user/tournament.dart';
import 'package:demo_app/src/domain/user/tournament_response.dart';
import 'package:demo_app/src/domain/user/user.dart';
import 'package:demo_app/src/infrastructure/core/api_exception.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@lazySingleton
class UserApis {
  Future<User> getUserInfo(String username) async {
    final data = await rootBundle.loadString("assets/json/userdetails.JSON");
    List<dynamic> jsonResult = json.decode(data);

    for (var item in jsonResult) {
      String userName = item["username"];
      if (userName == username) {
        return User(
          username: userName,
          name: item["name"],
          img: item["userImage"],
          rating: item["eloRating"],
          tournamentsPlayed: item["stats"]["tournamentsPlayed"],
          tournamentsWon: item["stats"]["tournamentWon"],
          winningPercentage: item["stats"]["winPercentage"],
        );
      }
    }
    throw UserNotFoundException(message: "");
  }

  Future<TournamentResponse> getTournaments(String cursor) async {
    var url =
        "http://tournaments-dot-game-tv-prod.uc.r.appspot.com/tournament/api/tournaments_list_v2?limit=10&status=all";
    var response =
        await http.get(url + (cursor.isEmpty ? "" : "&cursor=$cursor"));
    if (response.statusCode >= 200 && response.statusCode < 300) {
      var responseData = json.decode(response.body);
      var data = responseData["data"];
      String cursor = data["cursor"];
      List<Tournament> tournaments = List();

      for (var tournament in data["tournaments"]) {
        tournaments.add(Tournament(
          name: tournament["name"],
          gameName: tournament["game_name"],
          coverUrl: tournament["cover_url"],
        ));
      }

      return TournamentResponse(cursor: cursor, tournaments: tournaments);
    } else {
      throw RequestFailureException(
        responseCode: response.statusCode,
        message: "",
      );
    }
  }
}
