import 'package:dartz/dartz.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:demo_app/src/domain/auth/i_auth_repository.dart';
import 'package:demo_app/src/domain/core/failures/api_failure.dart';
import 'package:demo_app/src/domain/core/value_objects/value_objects.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_event.dart';

part 'login_state.dart';

part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthRepository _authRepository;

  LoginBloc(this._authRepository) : super(LoginState.initial());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    yield* event.map(
      checkCurrentSession: (e) async* {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        bool sessionExists = prefs.containsKey("userName");

        yield state.copyWith(
          sessionChecked: true,
          alreadyLoggedIn: sessionExists,
        );
      },
      usernameChanged: (e) async* {
        yield state.copyWith(
          userName: Username(e.username),
          failureMessage: "",
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.password),
          failureMessage: "",
        );
      },
      showHidePassword: (e) async* {
        yield state.copyWith(
          obscureText: !state.obscureText,
          failureMessage: "",
        );
      },
      submitPressed: (e) async* {
        yield state.copyWith(
          loginSuccess: false,
          failureMessage: "",
        );

        Either<APIFailure, Unit> result = await _authRepository.loginUser(
          state.userName,
          state.password,
        );

        if (result.isRight()) {
          SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setString('userName', state.userName.getOrEmpty());
          yield state.copyWith(
            loginSuccess: true,
            failureMessage: "",
          );
        } else {
          yield state.copyWith(
            loginSuccess: false,
            failureMessage: "Username or password does not match the records.",
          );
        }
      },
    );
  }
}
