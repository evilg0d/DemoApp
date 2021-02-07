import 'package:demo_app/src/injection.dart';
import 'package:demo_app/src/ui/core/app_colors.dart';
import 'package:demo_app/src/ui/home/widget/home_widget.dart';
import 'package:demo_app/src/ui/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:demo_app/src/application/home/home_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String userName = "";

  @override
  void initState() {
    getUserName();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          userName,
          style:
              const TextStyle(fontSize: 18, color: AppColors.primaryTextColor),
        ),
        iconTheme: const IconThemeData(color: AppColors.primaryTextColor),
        elevation: 10,
        backgroundColor: AppColors.white,
        actions: [
          FlatButton(
            child: const Icon(Icons.logout),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            onPressed: () {
              logoutUser();
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
          ),
        ],
      ),
      body: BlocProvider(
        create: (context) => getIt<HomeBloc>(),
        child: HomeWidget(),
      ),
    );
  }

  void getUserName() async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    String username = preference.getString("userName");

    setState(() {
      userName = username;
    });
  }

  void logoutUser() async {
    SharedPreferences preference = await SharedPreferences.getInstance();
    preference.remove("userName");
  }
}
