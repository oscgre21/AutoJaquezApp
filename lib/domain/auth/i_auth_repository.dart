import 'package:autojaquezapp/domain/core/value_objects.dart';

import 'auth_failure.dart';
import 'model/user_data.dart';
import 'value_objects.dart';
import '../core/server_respond.dart';
import '../core/request/client_response.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

abstract class IAuthRepository {
  Future<Either<IAuthFailure, Unit>> registerWithFirebase({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<IAuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
    required PhoneNumber phone_number,
    required InputName name_lastname,
  });
  Future<Either<IAuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<IAuthFailure, Unit>> signInWithGoogle();

  Future<Option<UserData>> getSignedInUser();
  Future<void> signOut();
}
