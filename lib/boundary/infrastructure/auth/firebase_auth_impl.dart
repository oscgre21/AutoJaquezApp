import 'package:autojaquezapp/domain/auth/model/user_data.dart';
import 'package:autojaquezapp/boundary/core/helpers/IRequestApi.dart';
import 'package:autojaquezapp/domain/core/value_objects.dart';
import 'package:autojaquezapp/domain/register/UserRegister.dart';
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
    var data = await _httprequest.post(
        "/register",
        UserRegister(
            name: name_lastname.getOrCrash(),
            phone: phone_number.getOrCrash(),
            email: emailAddress.getOrCrash(),
            password: password.getOrCrash()));

    return left(const IAuthFailure.serverError());
    /*
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
      }*/
  }

  @override
  Future<Either<IAuthFailure, Unit>> signInWithEmailAndPassword(
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
      ]);

  @override
  Future<Option<UserData>> getSignedInUser() {
    if (_firebaseAuth.currentUser == null) {
      return Future.value(none());
    }
    return Future.value(
        optionOf(UserData(uuid: _firebaseAuth.currentUser!.uid)));
  }
}
