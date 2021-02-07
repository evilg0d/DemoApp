// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@required String username,
      @required String name,
      @required String img,
      @required int rating,
      @required int tournamentsPlayed,
      @required int tournamentsWon,
      @required int winningPercentage}) {
    return _User(
      username: username,
      name: name,
      img: img,
      rating: rating,
      tournamentsPlayed: tournamentsPlayed,
      tournamentsWon: tournamentsWon,
      winningPercentage: winningPercentage,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get username;
  String get name;
  String get img;
  int get rating;
  int get tournamentsPlayed;
  int get tournamentsWon;
  int get winningPercentage;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String username,
      String name,
      String img,
      int rating,
      int tournamentsPlayed,
      int tournamentsWon,
      int winningPercentage});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object username = freezed,
    Object name = freezed,
    Object img = freezed,
    Object rating = freezed,
    Object tournamentsPlayed = freezed,
    Object tournamentsWon = freezed,
    Object winningPercentage = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as String,
      name: name == freezed ? _value.name : name as String,
      img: img == freezed ? _value.img : img as String,
      rating: rating == freezed ? _value.rating : rating as int,
      tournamentsPlayed: tournamentsPlayed == freezed
          ? _value.tournamentsPlayed
          : tournamentsPlayed as int,
      tournamentsWon: tournamentsWon == freezed
          ? _value.tournamentsWon
          : tournamentsWon as int,
      winningPercentage: winningPercentage == freezed
          ? _value.winningPercentage
          : winningPercentage as int,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String username,
      String name,
      String img,
      int rating,
      int tournamentsPlayed,
      int tournamentsWon,
      int winningPercentage});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object username = freezed,
    Object name = freezed,
    Object img = freezed,
    Object rating = freezed,
    Object tournamentsPlayed = freezed,
    Object tournamentsWon = freezed,
    Object winningPercentage = freezed,
  }) {
    return _then(_User(
      username: username == freezed ? _value.username : username as String,
      name: name == freezed ? _value.name : name as String,
      img: img == freezed ? _value.img : img as String,
      rating: rating == freezed ? _value.rating : rating as int,
      tournamentsPlayed: tournamentsPlayed == freezed
          ? _value.tournamentsPlayed
          : tournamentsPlayed as int,
      tournamentsWon: tournamentsWon == freezed
          ? _value.tournamentsWon
          : tournamentsWon as int,
      winningPercentage: winningPercentage == freezed
          ? _value.winningPercentage
          : winningPercentage as int,
    ));
  }
}

/// @nodoc
class _$_User with DiagnosticableTreeMixin implements _User {
  const _$_User(
      {@required this.username,
      @required this.name,
      @required this.img,
      @required this.rating,
      @required this.tournamentsPlayed,
      @required this.tournamentsWon,
      @required this.winningPercentage})
      : assert(username != null),
        assert(name != null),
        assert(img != null),
        assert(rating != null),
        assert(tournamentsPlayed != null),
        assert(tournamentsWon != null),
        assert(winningPercentage != null);

  @override
  final String username;
  @override
  final String name;
  @override
  final String img;
  @override
  final int rating;
  @override
  final int tournamentsPlayed;
  @override
  final int tournamentsWon;
  @override
  final int winningPercentage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(username: $username, name: $name, img: $img, rating: $rating, tournamentsPlayed: $tournamentsPlayed, tournamentsWon: $tournamentsWon, winningPercentage: $winningPercentage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('img', img))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('tournamentsPlayed', tournamentsPlayed))
      ..add(DiagnosticsProperty('tournamentsWon', tournamentsWon))
      ..add(DiagnosticsProperty('winningPercentage', winningPercentage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.img, img) ||
                const DeepCollectionEquality().equals(other.img, img)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.tournamentsPlayed, tournamentsPlayed) ||
                const DeepCollectionEquality()
                    .equals(other.tournamentsPlayed, tournamentsPlayed)) &&
            (identical(other.tournamentsWon, tournamentsWon) ||
                const DeepCollectionEquality()
                    .equals(other.tournamentsWon, tournamentsWon)) &&
            (identical(other.winningPercentage, winningPercentage) ||
                const DeepCollectionEquality()
                    .equals(other.winningPercentage, winningPercentage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(img) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(tournamentsPlayed) ^
      const DeepCollectionEquality().hash(tournamentsWon) ^
      const DeepCollectionEquality().hash(winningPercentage);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {@required String username,
      @required String name,
      @required String img,
      @required int rating,
      @required int tournamentsPlayed,
      @required int tournamentsWon,
      @required int winningPercentage}) = _$_User;

  @override
  String get username;
  @override
  String get name;
  @override
  String get img;
  @override
  int get rating;
  @override
  int get tournamentsPlayed;
  @override
  int get tournamentsWon;
  @override
  int get winningPercentage;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith;
}
