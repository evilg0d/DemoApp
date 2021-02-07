part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.fetchUserDataAndTournaments() = FetchUserDataAndTournaments;
  const factory HomeEvent.fetchTournaments() = FetchTournaments;
}