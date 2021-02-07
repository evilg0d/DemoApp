// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'infrastructure/auth/auth_apis.dart';
import 'infrastructure/auth/auth_repository.dart';
import 'application/home/home_bloc.dart';
import 'domain/auth/i_auth_repository.dart';
import 'domain/user/i_user_repository.dart';
import 'application/login/login_bloc.dart';
import 'infrastructure/user/user_apis.dart';
import 'infrastructure/user/user_repository.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<AuthApis>(() => AuthApis());
  gh.lazySingleton<IAuthRepository>(() => AuthRepository(get<AuthApis>()));
  gh.factory<LoginBloc>(() => LoginBloc(get<IAuthRepository>()));
  gh.lazySingleton<UserApis>(() => UserApis());
  gh.lazySingleton<IUserRepository>(() => UserRepository(get<UserApis>()));
  gh.factory<HomeBloc>(() => HomeBloc(get<IUserRepository>()));
  return get;
}
