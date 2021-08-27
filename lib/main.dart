import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:provider/provider.dart';

import 'application/auth/auth_bloc.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'application/order/OrderProviderNotifier.dart';
import 'application/shipping/ShippingProviderNotifier.dart';
import 'boundary/core/SessionProvider.dart';
import 'boundary/presentation/routes/app_router.dart';
import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider.value(
          value: getIt<SignInFormBloc>(),
        ),
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequest()),
        ),
        ChangeNotifierProvider.value(
          value: OrderProviderNotifier(),
        ),
        ChangeNotifierProvider.value(
          value: ShippingProviderNotifier(),
        ),
        ChangeNotifierProvider.value(
          value: SessionProvider(),
        )
      ],
      child: MaterialApp(
        initialRoute: AppRoutes.splashPage,
        onGenerateRoute: AppRoutes.generateRoute,
        theme: ThemeData(
            fontFamily: 'Roboto',
            primaryColor: Colors.white,
            primaryColorDark: Colors.white,
            backgroundColor: Colors.white),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

int currentIndex = 0;

void navigateToScreens(int index) {
  currentIndex = index;
  print("Current " + "$currentIndex");
}
