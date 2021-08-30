import 'package:autojaquezapp/application/auth/auth_bloc.dart';
import 'package:autojaquezapp/boundary/core/util/Constants.dart';
import 'package:autojaquezapp/boundary/presentation/routes/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../injection.dart';

class SpashScreenPage extends StatelessWidget {
  const SpashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) async {
        state.map(
          (value) => () {},
          authenticated: (_) async {
            print("Splah authenticated done");
            Future.delayed(const Duration(milliseconds: 3),
                () => Navigator.of(context).pushNamed(AppRoutes.homePage));
          },
          unauthenticated: (_) async {
            print("Splah unauthenticated done");
            Future.delayed(const Duration(milliseconds: 3),
                () => Navigator.of(context).pushNamed(AppRoutes.loginPage));
          },
        );
      },
      child: Container(
        color: Colors.white,
        child: Container(
          width: 200.0,
          height: 200.0,
          alignment: Alignment.center,
          child: Image.asset(IMG_LOGO),
        ),
      ),
    );
  }
}
