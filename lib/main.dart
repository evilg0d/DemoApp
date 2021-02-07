import 'package:demo_app/src/injection.dart';
import 'package:demo_app/src/ui/core/app_colors.dart';
import 'package:demo_app/src/ui/home/home_page.dart';
import 'package:demo_app/src/ui/login/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  configureInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(
            color: AppColors.secondaryTextColor,
            fontSize: 15,
          ),
          labelStyle:
              TextStyle(color: AppColors.secondaryTextColor, fontSize: 15),
          enabledBorder: new UnderlineInputBorder(
              borderSide: new BorderSide(color: AppColors.secondaryTextColor)),
          focusedBorder: new UnderlineInputBorder(
              borderSide: new BorderSide(color: AppColors.accentColor)),
        ),
      ),
      home: LoginPage(),
    );
  }
}
