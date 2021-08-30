part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SignInFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SignInFormEvent.phoneChanged(String phoneNumber) = PhoneChanged;
  const factory SignInFormEvent.nameChanged(String nameLastname) = NameChanged;

  const factory SignInFormEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;

  const factory SignInFormEvent.registerWithFirebase() = RegisterWithFirebase;
  const factory SignInFormEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signInWithGooglePressed() =
      SignInWithGooglePressed;
}
