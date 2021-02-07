part of 'login_bloc.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.usernameChanged(String username) = UsernameChanged;

  const factory LoginEvent.passwordChanged(String password) = PasswordChanged;

  const factory LoginEvent.showHidePassword() = ShowHidePassword;

  const factory LoginEvent.submitPressed() = SubmitPressed;

  const factory LoginEvent.checkCurrentSession() = CheckCurrentSession;
}