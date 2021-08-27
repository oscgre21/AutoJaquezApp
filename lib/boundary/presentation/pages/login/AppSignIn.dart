import 'package:another_flushbar/flushbar.dart';
import '../../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../../application/order/OrderProviderNotifier.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

import 'AppSingUp.dart';

/*
class AppSignIn extends StatefulWidget {
  @override
  _AppSignInState createState() => _AppSignInState();
}*/

class AppSignIn extends StatelessWidget {
  late OrderProviderNotifier appState;

  final username = TextEditingController();

  @override
  Widget build(BuildContext context) {
    appState = Provider.of<OrderProviderNotifier>(context);

    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              Flushbar(
                message: failure.map(
                  cancelledByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server error',
                  emailAlreadyInUse: (_) => 'Email already in use',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Invalid email and password combination',
                ),
                duration: Duration(seconds: 3),
              ).show(context);
            },
            (_) {
              Navigator.pop(context);
            },
          ),
        );
      },
      builder: (context, state) {
        return _scaf(context, state);
      },
    );
  }

  Widget _scaf(BuildContext context, SignInFormState state) {
    if (appState.isAuth) {
      // Navigator.pop(context);
    }

    return Scaffold(
      body: _cfdata(context, state),
    );
  }

  Widget _cfdata(BuildContext context, SignInFormState state) {
    String defaultFontFamily = 'Roboto-Light.ttf';
    double defaultFontSize = 14;
    double defaultIconSize = 17;

    SignInFormBloc signIn = Provider.of<SignInFormBloc>(context);

    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 35, bottom: 30),
      width: double.infinity,
      height: double.infinity,
      color: Colors.white70,
      child: Stack(children: [
        Form(
          autovalidateMode: AutovalidateMode.always,
          child: ListView(
            children: [
              Column(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 120,
                        height: 120,
                        alignment: Alignment.center,
                        child: Image.asset("assets/images/ic_app_icon.jpg"),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        validator: (_) => signIn.state.emailAddress.value.fold(
                          (l) => l.maybeMap(
                              invalidEmail: (_) => "Correo invalido",
                              orElse: () => null,
                              emailIsEmpty: (_) => ""),
                          (r) => null,
                        ),
                        onChanged: (value) =>
                            signIn.add(SignInFormEvent.emailChanged(value)),
                        showCursor: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Color(0xFF666666),
                            size: defaultIconSize,
                          ),
                          fillColor: Color(0xFFF2F3F5),
                          hintStyle: TextStyle(
                              color: Color(0xFF666666),
                              fontFamily: defaultFontFamily,
                              fontSize: defaultFontSize),
                          hintText: "Telefono",
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        validator: (val) => signIn.state.password.value.fold(
                          (l) => l.maybeMap(
                            orElse: () => null,
                            shortPassword: (_) => "Error Contraseña",
                            passwordIsEmpty: (_) => "",
                          ),
                          (r) => null,
                        ),
                        onChanged: (value) =>
                            signIn.add(SignInFormEvent.passwordChanged(value)),
                        obscureText: true,
                        showCursor: true,
                        autocorrect: false,
                        decoration: InputDecoration(
                          labelText: 'Contraseña',
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            color: Color(0xFF666666),
                            size: defaultIconSize,
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Color(0xFF666666),
                            size: defaultIconSize,
                          ),
                          fillColor: Color(0xFFF2F3F5),
                          hintStyle: TextStyle(
                            color: Color(0xFF666666),
                            fontFamily: defaultFontFamily,
                            fontSize: defaultFontSize,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: double.infinity,
                        child: Text(
                          "Olvidé mi contraseña?",
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontFamily: defaultFontFamily,
                            fontSize: defaultFontSize,
                            fontStyle: FontStyle.normal,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      signIn.state.isSubmitting
                          ? CircularProgressIndicator()
                          : Container(
                              width: double.infinity,
                              child: RaisedButton(
                                padding: EdgeInsets.all(17.0),
                                onPressed: () {
                                  signIn.add(const SignInFormEvent
                                      .signInWithEmailAndPasswordPressed());
                                },
                                child: Text(
                                  "Acceder",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'Poppins-Medium.ttf',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                color: Color(0xFFBC1F26),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(15.0),
                                    side: BorderSide(color: Color(0xFFBC1F26))),
                              ),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFF2F3F7)),
                            ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: Text(
                            "No tienes una cuenta? ",
                            style: TextStyle(
                              color: Color(0xFF666666),
                              fontFamily: defaultFontFamily,
                              fontSize: defaultFontSize,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AppSingUp()),
                            )
                          },
                          child: Container(
                            child: Text(
                              "Registrate!",
                              style: TextStyle(
                                color: Color(0xFFAC252B),
                                fontFamily: defaultFontFamily,
                                fontSize: defaultFontSize,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          width: 30.0,
          height: 30.0,
          child: InkWell(
            child: Container(
              child: Align(
                alignment: Alignment.topLeft,
                child: Icon(Icons.close),
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
      ]),
    );
  }
}
