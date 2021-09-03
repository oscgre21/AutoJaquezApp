import 'package:another_flushbar/flushbar.dart';
import 'package:autojaquezapp/application/auth/sign_in_form/sign_in_form_bloc.dart';

import 'package:autojaquezapp/boundary/presentation/routes/app_router.dart';
import 'package:autojaquezapp/injection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'AppSignIn.dart';

class AppSingUp extends StatelessWidget {
  late SignInFormBloc _register;
  AppSingUp() {
    _register = getIt<SignInFormBloc>();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: (MediaQuery.of(context).size.height) * 25 / 100,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      child: Container(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Registrate!",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/barbershop_cover.jpg"),
                  fit: BoxFit.fill,
                )),
              ),
            ),
            Positioned(
              top: (MediaQuery.of(context).size.height) * 25 / 100,
              left: 0,
              right: 0,
              bottom: 0,
              child: ListView(children: [
                BlocConsumer<SignInFormBloc, SignInFormState>(
                  bloc: _register,
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
                          await Navigator.of(context)
                              .popAndPushNamed(AppRoutes.homePage);
                          // Navigator.pop(context);
                        },
                      ),
                    );
                  },
                  builder: (context, state) {
                    return FormRegister(context);
                  },
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }

  Widget FormRegister(BuildContext context) {
    String defaultFontFamily = 'Roboto-Light.ttf';
    double defaultFontSize = 14;
    double defaultIconSize = 17;

    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 35, bottom: 30),
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Form(
        autovalidateMode: AutovalidateMode.always,
        child: Column(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  validator: (_) => _register.state.name.value.fold(
                    (l) => l.maybeMap(
                        orElse: () => null,
                        inputIsEmpty: (_) => "Nombre no debe estar vacio",
                        shortInputText: (_) =>
                            "El campo de nombre debe de tener más de 7 letras"),
                    (r) => null,
                  ),
                  onChanged: (val) => _register.add(
                    SignInFormEvent.nameChanged(val),
                  ),
                  showCursor: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Color(0xFF666666),
                      size: defaultIconSize,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    fillColor: Color(0xFFF2F3F5),
                    hintStyle: TextStyle(
                      color: Color(0xFF666666),
                      fontFamily: defaultFontFamily,
                      fontSize: defaultFontSize,
                    ),
                    hintText: "Nombre / Apellido",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  validator: (_) => _register.state.phone.value.fold(
                    (l) => l.maybeMap(
                      orElse: () => null,
                      invalidPhoneNumber: (_) => "Numero invalido",
                    ),
                    (r) => null,
                  ),
                  onChanged: (val) => _register.add(
                    SignInFormEvent.phoneChanged(val),
                  ),
                  showCursor: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
                  validator: (_) => _register.state.emailAddress.value.fold(
                    (l) => l.maybeMap(
                        invalidEmail: (_) => "Correo invalido",
                        orElse: () => null,
                        emailIsEmpty: (_) => ""),
                    (r) => null,
                  ),
                  onChanged: (val) => _register.add(
                    SignInFormEvent.emailChanged(val),
                  ),
                  showCursor: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true,
                    prefixIcon: Icon(
                      Icons.email,
                      color: Color(0xFF666666),
                      size: defaultIconSize,
                    ),
                    fillColor: Color(0xFFF2F3F5),
                    hintStyle: TextStyle(
                      color: Color(0xFF666666),
                      fontFamily: defaultFontFamily,
                      fontSize: defaultFontSize,
                    ),
                    hintText: "Correo Electronico",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                _register.state.isSubmitting
                    ? CircularProgressIndicator()
                    : Container(
                        width: double.infinity,
                        child: RaisedButton(
                          padding: EdgeInsets.all(17.0),
                          onPressed: () {
                            _register.add(const SignInFormEvent
                                .registerWithEmailAndPasswordPressed());
                          },
                          child: Text(
                            "Registrarse",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Poppins-Medium.ttf',
                            ),
                            textAlign: TextAlign.center,
                          ),
                          color: Color(0xFFBC1F26),
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(15.0),
                              side: BorderSide(color: Color(0xFFBC1F26))),
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xFFF2F3F7)),
                      ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
