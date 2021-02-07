import 'package:demo_app/src/ui/core/app_colors.dart';
import 'package:flutter/material.dart';

class UserDetailsWidget extends StatelessWidget {
  final String name;
  final String imageUrl;
  final int eloRating;

  UserDetailsWidget({this.imageUrl = "", this.name = "", this.eloRating = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      height: 120,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(imageUrl),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 22,
                        color: AppColors.primaryTextColor,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 7, 30, 7),
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        border: Border.all(
                          color: AppColors.accentColor,
                          width: 2,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30))),
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: "$eloRating",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: AppColors.Blue),
                          ),
                          TextSpan(
                            text: '  Elo Rating',
                            style: const TextStyle(
                                fontSize: 10,
                                color: AppColors.secondaryTextColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
