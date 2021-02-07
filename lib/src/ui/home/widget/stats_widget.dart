import 'package:demo_app/src/ui/core/app_colors.dart';
import 'package:flutter/material.dart';

class StatsWidget extends StatelessWidget {
  final int tournamentPlayed;
  final int tournamentWon;
  final int winPercentage;

  StatsWidget({
    this.tournamentPlayed = 0,
    this.tournamentWon = 0,
    this.winPercentage = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 100,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: const Radius.circular(20),
                      topLeft: const Radius.circular(20)),
                  gradient: const LinearGradient(colors: [
                    AppColors.yellow1,
                    AppColors.yellow2,
                  ])),
              child: Column(
                children: [
                  Text(
                    "$tournamentPlayed",
                    style:
                        const TextStyle(fontSize: 22, color: AppColors.white),
                  ),
                  Text(
                    "Tournaments\nPlayed",
                    textAlign: TextAlign.center,
                    style:
                        const TextStyle(fontSize: 12, color: AppColors.white),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(width: 1.5),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  gradient: const LinearGradient(colors: [
                AppColors.purple1,
                AppColors.purple2,
              ])),
              child: Column(
                children: [
                  Text(
                    "$tournamentWon",
                    style:
                        const TextStyle(fontSize: 22, color: AppColors.white),
                  ),
                  Text(
                    "Tournaments\nwon",
                    textAlign: TextAlign.center,
                    style:
                        const TextStyle(fontSize: 12, color: AppColors.white),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(width: 1.5),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomRight: const Radius.circular(20),
                      topRight: const Radius.circular(20)),
                  gradient: const LinearGradient(colors: [
                    AppColors.red1,
                    AppColors.red2,
                  ])),
              child: Column(
                children: [
                  Text(
                    "$winPercentage%",
                    style:
                        const TextStyle(fontSize: 22, color: AppColors.white),
                  ),
                  Text(
                    "Winning\npercentage",
                    textAlign: TextAlign.center,
                    style:
                        const TextStyle(fontSize: 12, color: AppColors.white),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
