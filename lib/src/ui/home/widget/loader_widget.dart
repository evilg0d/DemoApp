import 'package:demo_app/src/ui/core/app_colors.dart';
import 'package:flutter/material.dart';

class LoaderWidget extends StatelessWidget {
  final String message;
  final Widget mainWidget;
  final bool showLoading;

  LoaderWidget(this.mainWidget,
      {this.message = 'Please wait...', this.showLoading = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        mainWidget,
        showLoading
            ? Container(
                color: AppColors.Translucent,
              )
            : Text(''),
        showLoading
            ? Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                      valueColor: new AlwaysStoppedAnimation<Color>(
                          AppColors.primaryColor),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      message,
                      style: TextStyle(
                          fontSize: 15,
                          color: AppColors.secondaryTextColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            : Text(''),
      ],
    );
  }
}
