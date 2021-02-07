// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'api_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$APIFailureTearOff {
  const _$APIFailureTearOff();

// ignore: unused_element
  NotConnected notConnected() {
    return const NotConnected();
  }

// ignore: unused_element
  ServerError serverError(String message) {
    return ServerError(
      message,
    );
  }

// ignore: unused_element
  UserNotFound userNotFound(String message) {
    return UserNotFound(
      message,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $APIFailure = _$APIFailureTearOff();

/// @nodoc
mixin _$APIFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult notConnected(),
    @required TResult serverError(String message),
    @required TResult userNotFound(String message),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult notConnected(),
    TResult serverError(String message),
    TResult userNotFound(String message),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult notConnected(NotConnected value),
    @required TResult serverError(ServerError value),
    @required TResult userNotFound(UserNotFound value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult notConnected(NotConnected value),
    TResult serverError(ServerError value),
    TResult userNotFound(UserNotFound value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $APIFailureCopyWith<$Res> {
  factory $APIFailureCopyWith(
          APIFailure value, $Res Function(APIFailure) then) =
      _$APIFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$APIFailureCopyWithImpl<$Res> implements $APIFailureCopyWith<$Res> {
  _$APIFailureCopyWithImpl(this._value, this._then);

  final APIFailure _value;
  // ignore: unused_field
  final $Res Function(APIFailure) _then;
}

/// @nodoc
abstract class $NotConnectedCopyWith<$Res> {
  factory $NotConnectedCopyWith(
          NotConnected value, $Res Function(NotConnected) then) =
      _$NotConnectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotConnectedCopyWithImpl<$Res> extends _$APIFailureCopyWithImpl<$Res>
    implements $NotConnectedCopyWith<$Res> {
  _$NotConnectedCopyWithImpl(
      NotConnected _value, $Res Function(NotConnected) _then)
      : super(_value, (v) => _then(v as NotConnected));

  @override
  NotConnected get _value => super._value as NotConnected;
}

/// @nodoc
class _$NotConnected implements NotConnected {
  const _$NotConnected();

  @override
  String toString() {
    return 'APIFailure.notConnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NotConnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult notConnected(),
    @required TResult serverError(String message),
    @required TResult userNotFound(String message),
  }) {
    assert(notConnected != null);
    assert(serverError != null);
    assert(userNotFound != null);
    return notConnected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult notConnected(),
    TResult serverError(String message),
    TResult userNotFound(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notConnected != null) {
      return notConnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult notConnected(NotConnected value),
    @required TResult serverError(ServerError value),
    @required TResult userNotFound(UserNotFound value),
  }) {
    assert(notConnected != null);
    assert(serverError != null);
    assert(userNotFound != null);
    return notConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult notConnected(NotConnected value),
    TResult serverError(ServerError value),
    TResult userNotFound(UserNotFound value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notConnected != null) {
      return notConnected(this);
    }
    return orElse();
  }
}

abstract class NotConnected implements APIFailure {
  const factory NotConnected() = _$NotConnected;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$APIFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(ServerError(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$ServerError implements ServerError {
  const _$ServerError(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'APIFailure.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ServerError &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $ServerErrorCopyWith<ServerError> get copyWith =>
      _$ServerErrorCopyWithImpl<ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult notConnected(),
    @required TResult serverError(String message),
    @required TResult userNotFound(String message),
  }) {
    assert(notConnected != null);
    assert(serverError != null);
    assert(userNotFound != null);
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult notConnected(),
    TResult serverError(String message),
    TResult userNotFound(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult notConnected(NotConnected value),
    @required TResult serverError(ServerError value),
    @required TResult userNotFound(UserNotFound value),
  }) {
    assert(notConnected != null);
    assert(serverError != null);
    assert(userNotFound != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult notConnected(NotConnected value),
    TResult serverError(ServerError value),
    TResult userNotFound(UserNotFound value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements APIFailure {
  const factory ServerError(String message) = _$ServerError;

  String get message;
  @JsonKey(ignore: true)
  $ServerErrorCopyWith<ServerError> get copyWith;
}

/// @nodoc
abstract class $UserNotFoundCopyWith<$Res> {
  factory $UserNotFoundCopyWith(
          UserNotFound value, $Res Function(UserNotFound) then) =
      _$UserNotFoundCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$UserNotFoundCopyWithImpl<$Res> extends _$APIFailureCopyWithImpl<$Res>
    implements $UserNotFoundCopyWith<$Res> {
  _$UserNotFoundCopyWithImpl(
      UserNotFound _value, $Res Function(UserNotFound) _then)
      : super(_value, (v) => _then(v as UserNotFound));

  @override
  UserNotFound get _value => super._value as UserNotFound;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(UserNotFound(
      message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
class _$UserNotFound implements UserNotFound {
  const _$UserNotFound(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'APIFailure.userNotFound(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserNotFound &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $UserNotFoundCopyWith<UserNotFound> get copyWith =>
      _$UserNotFoundCopyWithImpl<UserNotFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult notConnected(),
    @required TResult serverError(String message),
    @required TResult userNotFound(String message),
  }) {
    assert(notConnected != null);
    assert(serverError != null);
    assert(userNotFound != null);
    return userNotFound(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult notConnected(),
    TResult serverError(String message),
    TResult userNotFound(String message),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userNotFound != null) {
      return userNotFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult notConnected(NotConnected value),
    @required TResult serverError(ServerError value),
    @required TResult userNotFound(UserNotFound value),
  }) {
    assert(notConnected != null);
    assert(serverError != null);
    assert(userNotFound != null);
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult notConnected(NotConnected value),
    TResult serverError(ServerError value),
    TResult userNotFound(UserNotFound value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class UserNotFound implements APIFailure {
  const factory UserNotFound(String message) = _$UserNotFound;

  String get message;
  @JsonKey(ignore: true)
  $UserNotFoundCopyWith<UserNotFound> get copyWith;
}
