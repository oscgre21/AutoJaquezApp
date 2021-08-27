import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class IAuthFailure with _$IAuthFailure {
  const factory IAuthFailure.cancelledByUser() = CancelledByUser;
  const factory IAuthFailure.serverError() = ServerError;
  const factory IAuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory IAuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
}
