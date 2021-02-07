part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {

  const factory HomeState({
    @required User user,
    @required List<Tournament> tournaments,
    @required bool showLoading,
    @required bool firstCall,
    @required String nextPageCursor,
    @required Option<APIFailure> userDataFailureOption,
    @required Option<APIFailure> tournamentFailureOption,
  }) = _HomeState;

  factory HomeState.initial() =>
      HomeState(
        user: User.empty(),
        tournaments: [],
        showLoading: false,
        firstCall: true,
        nextPageCursor: "",
        userDataFailureOption: none(),
        tournamentFailureOption: none(),
      ) ;

}