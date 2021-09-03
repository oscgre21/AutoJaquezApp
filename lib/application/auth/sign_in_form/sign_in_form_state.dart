part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required EmailAddress emailAddress,
    required Password password,
    required InputName name,
    required PhoneNumber phone,
    required bool showErrorMessages,
    required bool isSubmitting,
    required bool isAuth,
    required Option<Either<IAuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        emailAddress: EmailAddress('txt@t.com'),
        password: Password('123456'),
        phone: PhoneNumber("8093334444"),
        name: InputName("Carlos Almonte r"),
        showErrorMessages: false,
        isSubmitting: false,
        isAuth: false,
        authFailureOrSuccessOption: none(),
      );
}
