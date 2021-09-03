import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:autojaquezapp/application/auth/auth_bloc.dart';
import 'package:autojaquezapp/boundary/core/util/Constants.dart';
import 'package:autojaquezapp/boundary/presentation/routes/app_router.dart';

import '../../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../../injection.dart';

/*
class AppSignIn extends StatefulWidget {
  @override
  _AppSignInState createState() => _AppSignInState();
}*/

class AppSignIn extends StatelessWidget {
  final username = TextEditingController();
  late SignInFormBloc signIn;

  AppSignIn() {
    signIn = getIt<SignInFormBloc>(); // Provider.of<AuthBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    // appState = Provider.of<OrderProviderNotifier>(context);

    return BlocConsumer<SignInFormBloc, SignInFormState>(
      bloc: signIn,
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
            (_) async {
              await Navigator.of(context).popAndPushNamed(AppRoutes.homePage);
              // Navigator.pop(context);
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
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: (MediaQuery.of(context).size.height) * 25 / 100,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage("assets/images/barbershop_cover.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: (MediaQuery.of(context).size.height) * 25 / 100,
            bottom: 0,
            child: _cfdata(context, state),
          )
        ],
      ),
    );
  }

  Widget _cfdata(BuildContext context, SignInFormState state) {
    String defaultFontFamily = 'Roboto-Light.ttf';
    double defaultFontSize = 14;
    double defaultIconSize = 17;

    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
      ),
      width: double.infinity,
      height: double.infinity,
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
                      Text(
                        "Pujols BarberShop",
                        style: kTitleStyle,
                      ),
                      SizedBox(
                        height: 40,
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
                            Icons.person,
                            color: Color(0xFF666666),
                            size: defaultIconSize,
                          ),
                          fillColor: Color(0xFFF2F3F5),
                          hintStyle: TextStyle(
                              color: Color(0xFF666666),
                              fontFamily: defaultFontFamily,
                              fontSize: defaultFontSize),
                          hintText: "Correo electronico",
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
                        height: 20,
                      ),
                      signIn.state.isSubmitting
                          ? CircularProgressIndicator()
                          : Column(
                              children: [
                                _bottom_LoginWithEmail(),
                                SizedBox(
                                  height: 15.0,
                                ),
                                _bottom_LoginWithGmail(),
                              ],
                            ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
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
                          onTap: () => Navigator.of(context)
                              .popAndPushNamed(AppRoutes.SignUp),
                          child: Container(
                            height: 20,
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
      ]),
    );
  }

  Widget _bottom_LoginWithGmail() {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        padding: EdgeInsets.all(17.0),
        onPressed: () {
          signIn.add(const SignInFormEvent.signInWithGooglePressed());
        },
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Container(
                width: 20,
                child: Image.network(
                  'http://pngimg.com/uploads/google/google_PNG19635.png',
                  fit: BoxFit.cover,
                )),
            SizedBox(
              width: 20,
            ),
            Text(
              "Conectar con Google",
              style: TextStyle(
                color: Colors.black45,
                fontSize: 15,
                fontFamily: 'Poppins-Medium.ttf',
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(5.0),
          side: BorderSide(
            color: Colors.black12,
          ),
        ),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFF2F3F7),
      ),
    );
  }

  Widget _bottom_LoginWithEmail() {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        padding: EdgeInsets.all(17.0),
        onPressed: () {
          signIn.add(const SignInFormEvent.signInWithEmailAndPasswordPressed());
        },
        child: Row(
          children: [
            Icon(
              Icons.email,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Conectar con mi correo electronico",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Poppins-Medium.ttf',
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        color: Colors.blueGrey[700],
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(5.0),
          side: BorderSide(
            color: Colors.black12,
          ),
        ),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFF2F3F7),
      ),
    );
  }
}
