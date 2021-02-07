import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:demo_app/src/domain/user/tournament.dart';
import 'package:demo_app/src/domain/user/tournament_response.dart';
import 'package:demo_app/src/domain/user/user.dart';
import 'package:demo_app/src/infrastructure/core/api_exception.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@lazySingleton
class AuthApis {
  Future<Unit> validateUser(String username, String password) async {
    final data = await rootBundle.loadString("assets/json/userdetails.JSON");
    List<dynamic> jsonResult = json.decode(data);

    for (var item in jsonResult) {
      String userName = item["username"];
      if (userName == username) {
        String pass = item["password"];
        if (pass == password) return unit;
        break;
      }
    }
    throw UserNotFoundException(message: "");
  }
}
