part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @required Username userName,
    @required Password password,
    @required bool obscureText,
    @required bool loginSuccess,
    @required String failureMessage,
    @required bool sessionChecked,
    @required bool alreadyLoggedIn,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        userName: Username(''),
        password: Password(''),
        obscureText: true,
        loginSuccess: false,
        failureMessage: "",
        sessionChecked: false,
        alreadyLoggedIn: false,
      );
}
