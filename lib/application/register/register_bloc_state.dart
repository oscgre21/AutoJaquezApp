part of 'register_bloc_bloc.dart';

@freezed
abstract class RegisterBlocState with _$RegisterBlocState {
  const factory RegisterBlocState({
    required EmailAddress emailAddress,
    required InputName name,
    required Password password,
    required PhoneNumber phone,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<IAuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _RegisterBlocState;

  factory RegisterBlocState.initial() => RegisterBlocState(
        emailAddress: EmailAddress('x@x.c'),
        name: InputName("miguel angel test"),
        phone: PhoneNumber("8093334444"),
        password: Password("123456"),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
