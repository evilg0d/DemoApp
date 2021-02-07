import 'package:dartz/dartz.dart';
import 'package:demo_app/src/domain/core/failures/api_failure.dart';
import 'package:demo_app/src/domain/user/i_user_repository.dart';
import 'package:demo_app/src/domain/user/tournament.dart';
import 'package:demo_app/src/domain/user/tournament_response.dart';
import 'package:demo_app/src/domain/user/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'home_events.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IUserRepository _iUserRepository;

  HomeBloc(this._iUserRepository) : super(HomeState.initial());

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    yield* event.map(
      fetchUserDataAndTournaments: (e) async* {
        yield state.copyWith(
          showLoading: true,
          firstCall: false,
        );

        SharedPreferences prefs = await SharedPreferences.getInstance();
        String username = prefs.getString('userName');
        final userResult = await _iUserRepository.getUserData(username);

        APIFailure failure;
        User user = userResult.fold((l) {
          failure = l;
          return null;
        }, id);

        if (user != null) {
          yield state.copyWith(
            user: user,
          );

          final tournamentResult = await _iUserRepository.getTournaments("");

          TournamentResponse tournament = tournamentResult.fold((l) {
            failure = l;
            return null;
          }, id);

          if (tournament != null) {
            yield state.copyWith(
              tournaments: tournament.tournaments,
              nextPageCursor: tournament.cursor,
              showLoading: false,
              tournamentFailureOption: none(),
            );
          } else
            yield state.copyWith(
              tournamentFailureOption: some(failure),
              showLoading: false,
              tournaments: [],
            );
        } else
          yield state.copyWith(
            userDataFailureOption: some(failure),
            showLoading: false,
            user: User.empty(),
          );
      },
      fetchTournaments: (e) async* {
        yield state.copyWith(
          showLoading: true,
        );

        final tournamentResult =
            await _iUserRepository.getTournaments(state.nextPageCursor);

        APIFailure failure;
        TournamentResponse tournament = tournamentResult.fold((l) {
          failure = l;
          return null;
        }, id);

        if (tournament != null) {
          final tours = state.tournaments;
          tours.addAll(tournament.tournaments);
          yield state.copyWith(
            tournaments: tours,
            nextPageCursor: tournament.cursor,
            tournamentFailureOption: none(),
            showLoading: false,
          );
        } else
          yield state.copyWith(
            tournamentFailureOption: some(failure),
            tournaments: [],
            showLoading: false,
          );
      },
    );
  }
}
