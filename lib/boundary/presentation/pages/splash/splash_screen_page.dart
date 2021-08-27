import 'package:autojaquezapp/application/auth/auth_bloc.dart';
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
      listener: (context, state) {
        state.map(
            initial: (_) {},
            authenticated: (_) async {
              print("authenticated done");
              await Navigator.of(context).pushNamed(AppRoutes.homePage);
            },
            unauthenticated: (_) async {
              print("unauthenticated done");
              await Navigator.of(context).pushNamed(AppRoutes.loginPage);
            });
      },
      child: Container(
        color: Colors.white,
        child: FlatButton(
          textColor: Colors.red, // foreground
          onPressed: () {
            //getIt<AuthBloc>().add(const AuthEvent.authCheckRequest());
            Navigator.of(context).pushNamed(AppRoutes.homePage);
          },
          child: Text('FlatButton with custom foreground/background'),
        ),
      ),
    );
  }
}
