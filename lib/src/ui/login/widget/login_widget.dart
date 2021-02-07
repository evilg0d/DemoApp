import 'package:demo_app/src/ui/core/app_colors.dart';
import 'package:demo_app/src/ui/core/app_icon.dart';
import 'package:demo_app/src/ui/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:demo_app/src/application/login/login_bloc.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.failureMessage.isNotEmpty) {
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text(state.failureMessage),
              behavior: SnackBarBehavior.floating,
              backgroundColor: AppColors.errorRed,
            ),
          );
        } else if (state.loginSuccess || state.alreadyLoggedIn) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ),
          );
        }
      },
      builder: (context, state) {
        if (!state.sessionChecked)
          context.read<LoginBloc>().add(LoginEvent.checkCurrentSession());
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          decoration: const BoxDecoration(
            image: const DecorationImage(
              image: const AssetImage(AppIcon.LoginBackground),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AppIcon.AppLogo,
                width: 180,
                height: 50,
                color: AppColors.primaryColor,
              ),
              const SizedBox(height: 50),
              TextFormField(
                autofocus: false,
                maxLines: 1,
                maxLength: 10,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                style: const TextStyle(
                    fontSize: 16,
                    color: AppColors.primaryTextColor,
                    fontWeight: FontWeight.w600),
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: 'Username',
                ),
                onChanged: (value) => context
                    .read<LoginBloc>()
                    .add(LoginEvent.usernameChanged(value)),
                validator: (value) =>
                    context.read<LoginBloc>().state.userName.value.fold(
                          (l) => l.maybeMap(
                              invalidUsername: (f) => f.failureMessage,
                              orElse: () => null),
                          (r) => null,
                        ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                autofocus: false,
                maxLines: 1,
                maxLength: 10,
                maxLengthEnforced: true,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                style: TextStyle(
                    fontSize: 16,
                    color: AppColors.primaryTextColor,
                    fontWeight: FontWeight.w600),
                obscureText: context.read<LoginBloc>().state.obscureText,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: IconButton(
                    onPressed: () => {
                      context
                          .read<LoginBloc>()
                          .add(LoginEvent.showHidePassword())
                    },
                    icon: state.obscureText
                        ? Image.asset(AppIcon.showPassword,
                            width: 40,
                            height: 40,
                            color: AppColors.primaryColor)
                        : Image.asset(AppIcon.hidePassword,
                            width: 40,
                            height: 40,
                            color: AppColors.secondaryTextColor),
                  ),
                ),
                onChanged: (value) => context
                    .read<LoginBloc>()
                    .add(LoginEvent.passwordChanged(value)),
                validator: (value) =>
                    context.read<LoginBloc>().state.password.value.fold(
                          (l) => l.maybeMap(
                              invalidUsername: (f) => f.failureMessage,
                              orElse: () => null),
                          (r) => null,
                        ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  elevation: 5.0,
                  child: Text(
                    'LOGIN',
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  color: AppColors.primaryColor,
                  onPressed:
                      state.userName.isValid() && state.password.isValid()
                          ? () {
                              context
                                  .read<LoginBloc>()
                                  .add(LoginEvent.submitPressed());
                            }
                          : null,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
