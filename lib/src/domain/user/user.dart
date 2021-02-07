import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User{
  const factory User({
    @required String username,
    @required String name,
    @required String img,
    @required int rating,
    @required int tournamentsPlayed,
    @required int tournamentsWon,
    @required int winningPercentage,
  }) = _User;

  factory User.empty() =>
      User(
        username: "",
        name: "",
        img: "https://dummyimage.com/250/ffffff/000000",
        rating: 0,
        tournamentsPlayed: 0,
        tournamentsWon: 0,
        winningPercentage: 0,
      );
}
