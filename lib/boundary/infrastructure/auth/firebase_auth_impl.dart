import 'package:autojaquezapp/boundary/core/util/Urls.dart';
import 'package:autojaquezapp/domain/auth/model/user_data.dart';
import 'package:autojaquezapp/boundary/core/helpers/IRequestApi.dart';
import 'package:autojaquezapp/domain/core/value_objects.dart';
import 'package:autojaquezapp/domain/register/UserRegister.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/i_auth_repository.dart';
import 'package:dartz/dartz.dart';
import '../../../domain/auth/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

@lazySingleton
class FirebaseAuthImpl extends IAuthRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final IRequestApi _httprequest;
  FirebaseAuthImpl(this._firebaseAuth, this._googleSignIn, this._httprequest);

  @override
  Future<Either<IAuthFailure, Unit>> registerWithFirebase({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final EmailAddressStr = emailAddress.getOrCrash();
    final PasswordStr = emailAddress.getOrCrash();

    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: EmailAddressStr,
        password: PasswordStr,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const IAuthFailure.emailAlreadyInUse());
      } else {
        return left(const IAuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<IAuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
    required PhoneNumber phone_number,
    required InputName name_lastname,
  }) async {
    var data = await _httprequest.post("Auth/register", {
      "persona": {
        "nameComplete": name_lastname.getOrCrash(),
        "phone": phone_number.getOrCrash(),
        "email": emailAddress.getOrCrash()
      },
      "username": emailAddress.getOrCrash(),
      "password": password.getOrCrash()
    });
    var info = data.fold(
      (l) => null, //if there are some errors then empty
      (r) => r.dynamicResult,
    );
    if (info == null) {
      return left(const IAuthFailure.serverError());
    }
    Urls.setAuthorizationHeader(info);

    return right(unit);
  }

  @override
  Future<Either<IAuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      var x = await _httprequest.post("Auth/authenticate", {
        "username": emailAddressStr,
        "password": passwordStr,
      });
      Urls.setAuthorizationHeader(x.fold(
        (l) => "", //if there are some errors then empty
        (r) => r.dynamicResult,
      ));

      //x.dynamicResult
      /*
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );*/
      return right(unit);
    } catch (e) {
      return left(const IAuthFailure.serverError());
      //return left(const IAuthFailure.invalidEmailAndPasswordCombination());
    }
  }

  Future<Either<IAuthFailure, Unit>> signInWithFirebaseAuthEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'ERROR_WRONG_PASSWORD' ||
          e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const IAuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const IAuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<IAuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const IAuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      await _firebaseAuth.signInWithCredential(authCredential);
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const IAuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
        Urls.clearHeaders(),
      ]);

  @override
  Future<Option<UserData>> getSignedInUser() async {
    await Urls.initSharePreference();
    if (Urls.headers.length == 0) {
      return Future.value(none());
    }
    var header = Urls.headers['authorization']!;
    print("Before Validating auth " + header);
    if (header == null || header == "") {
      return Future.value(none());
    }

    var x = await _httprequest.get("Auth/validateToken", "");
    var result = x.fold(
      (l) => false,
      (r) => r.dynamicResult,
    );

    if (result != "true") {
      return Future.value(none());
    }
    print("Validating auth " + header);

    return Future.value(optionOf(UserData(
      uuid: header,
    )));
  }
}
