import 'package:demo_app/src/application/home/home_bloc.dart';
import 'package:demo_app/src/domain/user/tournament.dart';
import 'package:demo_app/src/ui/core/app_colors.dart';
import 'package:demo_app/src/ui/home/widget/list_item.dart';
import 'package:demo_app/src/ui/home/widget/loader_widget.dart';
import 'package:demo_app/src/ui/home/widget/stats_widget.dart';
import 'package:demo_app/src/ui/home/widget/user_details_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeWidget extends StatelessWidget {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state.firstCall)
          context.read<HomeBloc>().add(HomeEvent.fetchUserDataAndTournaments());

        return LoaderWidget(
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserDetailsWidget(
                imageUrl: state.user.img,
                name: state.user.name,
                eloRating: state.user.rating,
              ),
              StatsWidget(
                tournamentPlayed: state.user.tournamentsPlayed,
                tournamentWon: state.user.tournamentsWon,
                winPercentage: state.user.winningPercentage,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 20),
                child: Text(
                  "Recommended for you",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: AppColors.primaryTextColor,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: NotificationListener(
                    child: ListView.builder(
                      controller: _controller,
                      itemCount: state.tournaments.length,
                      itemBuilder: (context, position) {
                        Tournament tournament = state.tournaments[position];
                        return ListItem(
                          imageUrl: tournament.coverUrl,
                          gameName: tournament.gameName,
                          tournamentName: tournament.name,
                        );
                      },
                    ),
                    onNotification: (t) {
                      if (t is ScrollEndNotification) {
                        if (_controller.position.maxScrollExtent ==
                            _controller.position.pixels)
                          context
                              .read<HomeBloc>()
                              .add(HomeEvent.fetchTournaments());
                      }
                      return true;
                    },
                  ),
                ),
              )
            ],
          ),
          showLoading: state.showLoading,
        );
      },
    );
  }
}
