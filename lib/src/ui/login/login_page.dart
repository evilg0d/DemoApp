import 'package:demo_app/src/injection.dart';
import 'package:demo_app/src/ui/login/widget/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:demo_app/src/application/login/login_bloc.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<LoginBloc>(),
        child: LoginWidget(),
      ),
    );
  }
}
