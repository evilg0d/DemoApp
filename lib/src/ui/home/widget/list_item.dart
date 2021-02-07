import 'package:demo_app/src/ui/core/app_colors.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String imageUrl;
  final String tournamentName;
  final String gameName;

  ListItem({this.imageUrl, this.tournamentName, this.gameName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Ink.image(
                height: 100,
                fit: BoxFit.fitWidth,
                image: NetworkImage(imageUrl),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tournamentName,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryTextColor,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            gameName,
                            style: const TextStyle(
                              fontSize: 12,
                              color: AppColors.secondaryTextColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: AppColors.secondaryTextColor,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
