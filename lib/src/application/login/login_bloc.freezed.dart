// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

// ignore: unused_element
  UsernameChanged usernameChanged(String username) {
    return UsernameChanged(
      username,
    );
  }

// ignore: unused_element
  PasswordChanged passwordChanged(String password) {
    return PasswordChanged(
      password,
    );
  }

// ignore: unused_element
  ShowHidePassword showHidePassword() {
    return const ShowHidePassword();
  }

// ignore: unused_element
  SubmitPressed submitPressed() {
    return const SubmitPressed();
  }

// ignore: unused_element
  CheckCurrentSession checkCurrentSession() {
    return const CheckCurrentSession();
  }
}

/// @nodoc
// ignore: unused_element
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult usernameChanged(String username),
    @required TResult passwordChanged(String password),
    @required TResult showHidePassword(),
    @required TResult submitPressed(),
    @required TResult checkCurrentSession(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult usernameChanged(String username),
    TResult passwordChanged(String password),
    TResult showHidePassword(),
    TResult submitPressed(),
    TResult checkCurrentSession(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult showHidePassword(ShowHidePassword value),
    @required TResult submitPressed(SubmitPressed value),
    @required TResult checkCurrentSession(CheckCurrentSession value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult usernameChanged(UsernameChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult showHidePassword(ShowHidePassword value),
    TResult submitPressed(SubmitPressed value),
    TResult checkCurrentSession(CheckCurrentSession value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class $UsernameChangedCopyWith<$Res> {
  factory $UsernameChangedCopyWith(
          UsernameChanged value, $Res Function(UsernameChanged) then) =
      _$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class _$UsernameChangedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $UsernameChangedCopyWith<$Res> {
  _$UsernameChangedCopyWithImpl(
      UsernameChanged _value, $Res Function(UsernameChanged) _then)
      : super(_value, (v) => _then(v as UsernameChanged));

  @override
  UsernameChanged get _value => super._value as UsernameChanged;

  @override
  $Res call({
    Object username = freezed,
  }) {
    return _then(UsernameChanged(
      username == freezed ? _value.username : username as String,
    ));
  }
}

/// @nodoc
class _$UsernameChanged implements UsernameChanged {
  const _$UsernameChanged(this.username) : assert(username != null);

  @override
  final String username;

  @override
  String toString() {
    return 'LoginEvent.usernameChanged(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsernameChanged &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      _$UsernameChangedCopyWithImpl<UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult usernameChanged(String username),
    @required TResult passwordChanged(String password),
    @required TResult showHidePassword(),
    @required TResult submitPressed(),
    @required TResult checkCurrentSession(),
  }) {
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(showHidePassword != null);
    assert(submitPressed != null);
    assert(checkCurrentSession != null);
    return usernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult usernameChanged(String username),
    TResult passwordChanged(String password),
    TResult showHidePassword(),
    TResult submitPressed(),
    TResult checkCurrentSession(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult showHidePassword(ShowHidePassword value),
    @required TResult submitPressed(SubmitPressed value),
    @required TResult checkCurrentSession(CheckCurrentSession value),
  }) {
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(showHidePassword != null);
    assert(submitPressed != null);
    assert(checkCurrentSession != null);
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult usernameChanged(UsernameChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult showHidePassword(ShowHidePassword value),
    TResult submitPressed(SubmitPressed value),
    TResult checkCurrentSession(CheckCurrentSession value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements LoginEvent {
  const factory UsernameChanged(String username) = _$UsernameChanged;

  String get username;
  @JsonKey(ignore: true)
  $UsernameChangedCopyWith<UsernameChanged> get copyWith;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object password = freezed,
  }) {
    return _then(PasswordChanged(
      password == freezed ? _value.password : password as String,
    ));
  }
}

/// @nodoc
class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.password) : assert(password != null);

  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult usernameChanged(String username),
    @required TResult passwordChanged(String password),
    @required TResult showHidePassword(),
    @required TResult submitPressed(),
    @required TResult checkCurrentSession(),
  }) {
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(showHidePassword != null);
    assert(submitPressed != null);
    assert(checkCurrentSession != null);
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult usernameChanged(String username),
    TResult passwordChanged(String password),
    TResult showHidePassword(),
    TResult submitPressed(),
    TResult checkCurrentSession(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult showHidePassword(ShowHidePassword value),
    @required TResult submitPressed(SubmitPressed value),
    @required TResult checkCurrentSession(CheckCurrentSession value),
  }) {
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(showHidePassword != null);
    assert(submitPressed != null);
    assert(checkCurrentSession != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult usernameChanged(UsernameChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult showHidePassword(ShowHidePassword value),
    TResult submitPressed(SubmitPressed value),
    TResult checkCurrentSession(CheckCurrentSession value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements LoginEvent {
  const factory PasswordChanged(String password) = _$PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

/// @nodoc
abstract class $ShowHidePasswordCopyWith<$Res> {
  factory $ShowHidePasswordCopyWith(
          ShowHidePassword value, $Res Function(ShowHidePassword) then) =
      _$ShowHidePasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowHidePasswordCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $ShowHidePasswordCopyWith<$Res> {
  _$ShowHidePasswordCopyWithImpl(
      ShowHidePassword _value, $Res Function(ShowHidePassword) _then)
      : super(_value, (v) => _then(v as ShowHidePassword));

  @override
  ShowHidePassword get _value => super._value as ShowHidePassword;
}

/// @nodoc
class _$ShowHidePassword implements ShowHidePassword {
  const _$ShowHidePassword();

  @override
  String toString() {
    return 'LoginEvent.showHidePassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowHidePassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult usernameChanged(String username),
    @required TResult passwordChanged(String password),
    @required TResult showHidePassword(),
    @required TResult submitPressed(),
    @required TResult checkCurrentSession(),
  }) {
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(showHidePassword != null);
    assert(submitPressed != null);
    assert(checkCurrentSession != null);
    return showHidePassword();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult usernameChanged(String username),
    TResult passwordChanged(String password),
    TResult showHidePassword(),
    TResult submitPressed(),
    TResult checkCurrentSession(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showHidePassword != null) {
      return showHidePassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult showHidePassword(ShowHidePassword value),
    @required TResult submitPressed(SubmitPressed value),
    @required TResult checkCurrentSession(CheckCurrentSession value),
  }) {
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(showHidePassword != null);
    assert(submitPressed != null);
    assert(checkCurrentSession != null);
    return showHidePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult usernameChanged(UsernameChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult showHidePassword(ShowHidePassword value),
    TResult submitPressed(SubmitPressed value),
    TResult checkCurrentSession(CheckCurrentSession value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (showHidePassword != null) {
      return showHidePassword(this);
    }
    return orElse();
  }
}

abstract class ShowHidePassword implements LoginEvent {
  const factory ShowHidePassword() = _$ShowHidePassword;
}

/// @nodoc
abstract class $SubmitPressedCopyWith<$Res> {
  factory $SubmitPressedCopyWith(
          SubmitPressed value, $Res Function(SubmitPressed) then) =
      _$SubmitPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitPressedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $SubmitPressedCopyWith<$Res> {
  _$SubmitPressedCopyWithImpl(
      SubmitPressed _value, $Res Function(SubmitPressed) _then)
      : super(_value, (v) => _then(v as SubmitPressed));

  @override
  SubmitPressed get _value => super._value as SubmitPressed;
}

/// @nodoc
class _$SubmitPressed implements SubmitPressed {
  const _$SubmitPressed();

  @override
  String toString() {
    return 'LoginEvent.submitPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SubmitPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult usernameChanged(String username),
    @required TResult passwordChanged(String password),
    @required TResult showHidePassword(),
    @required TResult submitPressed(),
    @required TResult checkCurrentSession(),
  }) {
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(showHidePassword != null);
    assert(submitPressed != null);
    assert(checkCurrentSession != null);
    return submitPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult usernameChanged(String username),
    TResult passwordChanged(String password),
    TResult showHidePassword(),
    TResult submitPressed(),
    TResult checkCurrentSession(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submitPressed != null) {
      return submitPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult showHidePassword(ShowHidePassword value),
    @required TResult submitPressed(SubmitPressed value),
    @required TResult checkCurrentSession(CheckCurrentSession value),
  }) {
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(showHidePassword != null);
    assert(submitPressed != null);
    assert(checkCurrentSession != null);
    return submitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult usernameChanged(UsernameChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult showHidePassword(ShowHidePassword value),
    TResult submitPressed(SubmitPressed value),
    TResult checkCurrentSession(CheckCurrentSession value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submitPressed != null) {
      return submitPressed(this);
    }
    return orElse();
  }
}

abstract class SubmitPressed implements LoginEvent {
  const factory SubmitPressed() = _$SubmitPressed;
}

/// @nodoc
abstract class $CheckCurrentSessionCopyWith<$Res> {
  factory $CheckCurrentSessionCopyWith(
          CheckCurrentSession value, $Res Function(CheckCurrentSession) then) =
      _$CheckCurrentSessionCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckCurrentSessionCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $CheckCurrentSessionCopyWith<$Res> {
  _$CheckCurrentSessionCopyWithImpl(
      CheckCurrentSession _value, $Res Function(CheckCurrentSession) _then)
      : super(_value, (v) => _then(v as CheckCurrentSession));

  @override
  CheckCurrentSession get _value => super._value as CheckCurrentSession;
}

/// @nodoc
class _$CheckCurrentSession implements CheckCurrentSession {
  const _$CheckCurrentSession();

  @override
  String toString() {
    return 'LoginEvent.checkCurrentSession()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CheckCurrentSession);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult usernameChanged(String username),
    @required TResult passwordChanged(String password),
    @required TResult showHidePassword(),
    @required TResult submitPressed(),
    @required TResult checkCurrentSession(),
  }) {
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(showHidePassword != null);
    assert(submitPressed != null);
    assert(checkCurrentSession != null);
    return checkCurrentSession();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult usernameChanged(String username),
    TResult passwordChanged(String password),
    TResult showHidePassword(),
    TResult submitPressed(),
    TResult checkCurrentSession(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (checkCurrentSession != null) {
      return checkCurrentSession();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult usernameChanged(UsernameChanged value),
    @required TResult passwordChanged(PasswordChanged value),
    @required TResult showHidePassword(ShowHidePassword value),
    @required TResult submitPressed(SubmitPressed value),
    @required TResult checkCurrentSession(CheckCurrentSession value),
  }) {
    assert(usernameChanged != null);
    assert(passwordChanged != null);
    assert(showHidePassword != null);
    assert(submitPressed != null);
    assert(checkCurrentSession != null);
    return checkCurrentSession(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult usernameChanged(UsernameChanged value),
    TResult passwordChanged(PasswordChanged value),
    TResult showHidePassword(ShowHidePassword value),
    TResult submitPressed(SubmitPressed value),
    TResult checkCurrentSession(CheckCurrentSession value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (checkCurrentSession != null) {
      return checkCurrentSession(this);
    }
    return orElse();
  }
}

abstract class CheckCurrentSession implements LoginEvent {
  const factory CheckCurrentSession() = _$CheckCurrentSession;
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

// ignore: unused_element
  _LoginState call(
      {@required Username userName,
      @required Password password,
      @required bool obscureText,
      @required bool loginSuccess,
      @required String failureMessage,
      @required bool sessionChecked,
      @required bool alreadyLoggedIn}) {
    return _LoginState(
      userName: userName,
      password: password,
      obscureText: obscureText,
      loginSuccess: loginSuccess,
      failureMessage: failureMessage,
      sessionChecked: sessionChecked,
      alreadyLoggedIn: alreadyLoggedIn,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  Username get userName;
  Password get password;
  bool get obscureText;
  bool get loginSuccess;
  String get failureMessage;
  bool get sessionChecked;
  bool get alreadyLoggedIn;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {Username userName,
      Password password,
      bool obscureText,
      bool loginSuccess,
      String failureMessage,
      bool sessionChecked,
      bool alreadyLoggedIn});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object userName = freezed,
    Object password = freezed,
    Object obscureText = freezed,
    Object loginSuccess = freezed,
    Object failureMessage = freezed,
    Object sessionChecked = freezed,
    Object alreadyLoggedIn = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed ? _value.userName : userName as Username,
      password: password == freezed ? _value.password : password as Password,
      obscureText:
          obscureText == freezed ? _value.obscureText : obscureText as bool,
      loginSuccess:
          loginSuccess == freezed ? _value.loginSuccess : loginSuccess as bool,
      failureMessage: failureMessage == freezed
          ? _value.failureMessage
          : failureMessage as String,
      sessionChecked: sessionChecked == freezed
          ? _value.sessionChecked
          : sessionChecked as bool,
      alreadyLoggedIn: alreadyLoggedIn == freezed
          ? _value.alreadyLoggedIn
          : alreadyLoggedIn as bool,
    ));
  }
}

/// @nodoc
abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Username userName,
      Password password,
      bool obscureText,
      bool loginSuccess,
      String failureMessage,
      bool sessionChecked,
      bool alreadyLoggedIn});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object userName = freezed,
    Object password = freezed,
    Object obscureText = freezed,
    Object loginSuccess = freezed,
    Object failureMessage = freezed,
    Object sessionChecked = freezed,
    Object alreadyLoggedIn = freezed,
  }) {
    return _then(_LoginState(
      userName: userName == freezed ? _value.userName : userName as Username,
      password: password == freezed ? _value.password : password as Password,
      obscureText:
          obscureText == freezed ? _value.obscureText : obscureText as bool,
      loginSuccess:
          loginSuccess == freezed ? _value.loginSuccess : loginSuccess as bool,
      failureMessage: failureMessage == freezed
          ? _value.failureMessage
          : failureMessage as String,
      sessionChecked: sessionChecked == freezed
          ? _value.sessionChecked
          : sessionChecked as bool,
      alreadyLoggedIn: alreadyLoggedIn == freezed
          ? _value.alreadyLoggedIn
          : alreadyLoggedIn as bool,
    ));
  }
}

/// @nodoc
class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {@required this.userName,
      @required this.password,
      @required this.obscureText,
      @required this.loginSuccess,
      @required this.failureMessage,
      @required this.sessionChecked,
      @required this.alreadyLoggedIn})
      : assert(userName != null),
        assert(password != null),
        assert(obscureText != null),
        assert(loginSuccess != null),
        assert(failureMessage != null),
        assert(sessionChecked != null),
        assert(alreadyLoggedIn != null);

  @override
  final Username userName;
  @override
  final Password password;
  @override
  final bool obscureText;
  @override
  final bool loginSuccess;
  @override
  final String failureMessage;
  @override
  final bool sessionChecked;
  @override
  final bool alreadyLoggedIn;

  @override
  String toString() {
    return 'LoginState(userName: $userName, password: $password, obscureText: $obscureText, loginSuccess: $loginSuccess, failureMessage: $failureMessage, sessionChecked: $sessionChecked, alreadyLoggedIn: $alreadyLoggedIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginState &&
            (identical(other.userName, userName) ||
                const DeepCollectionEquality()
                    .equals(other.userName, userName)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.obscureText, obscureText) ||
                const DeepCollectionEquality()
                    .equals(other.obscureText, obscureText)) &&
            (identical(other.loginSuccess, loginSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.loginSuccess, loginSuccess)) &&
            (identical(other.failureMessage, failureMessage) ||
                const DeepCollectionEquality()
                    .equals(other.failureMessage, failureMessage)) &&
            (identical(other.sessionChecked, sessionChecked) ||
                const DeepCollectionEquality()
                    .equals(other.sessionChecked, sessionChecked)) &&
            (identical(other.alreadyLoggedIn, alreadyLoggedIn) ||
                const DeepCollectionEquality()
                    .equals(other.alreadyLoggedIn, alreadyLoggedIn)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userName) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(obscureText) ^
      const DeepCollectionEquality().hash(loginSuccess) ^
      const DeepCollectionEquality().hash(failureMessage) ^
      const DeepCollectionEquality().hash(sessionChecked) ^
      const DeepCollectionEquality().hash(alreadyLoggedIn);

  @JsonKey(ignore: true)
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {@required Username userName,
      @required Password password,
      @required bool obscureText,
      @required bool loginSuccess,
      @required String failureMessage,
      @required bool sessionChecked,
      @required bool alreadyLoggedIn}) = _$_LoginState;

  @override
  Username get userName;
  @override
  Password get password;
  @override
  bool get obscureText;
  @override
  bool get loginSuccess;
  @override
  String get failureMessage;
  @override
  bool get sessionChecked;
  @override
  bool get alreadyLoggedIn;
  @override
  @JsonKey(ignore: true)
  _$LoginStateCopyWith<_LoginState> get copyWith;
}
