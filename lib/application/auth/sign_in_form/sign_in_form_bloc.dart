import 'package:autojaquezapp/domain/core/value_objects.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:autojaquezapp/domain/auth/auth_failure.dart';
import 'package:autojaquezapp/domain/auth/i_auth_repository.dart';
import 'package:autojaquezapp/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthRepository _authRepo;
  SignInFormBloc(this._authRepo) : super(SignInFormState.initial());

  SignInFormState get initialState => SignInFormState.initial();
  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      phoneChanged: (e) async* {
        yield state.copyWith(
          phone: PhoneNumber(e.phoneNumber),
          authFailureOrSuccessOption: none(),
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          name: InputName(e.nameLastname),
          authFailureOrSuccessOption: none(),
        );
      },
      registerWithEmailAndPasswordPressed: (e) async* {
        /* This process you can register by rest Api application */
        Either<IAuthFailure, Unit>? failureOrSuccess;

        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();
        final isNameValid = state.name.isValid();
        final isPhoneValid = state.phone.isValid();

        if (isEmailValid && isPasswordValid && isNameValid && isPhoneValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );
          failureOrSuccess = await _authRepo.registerWithEmailAndPassword(
              emailAddress: state.emailAddress,
              password: state.password,
              name_lastname: state.name,
              phone_number: state.phone);
        } else {
          failureOrSuccess =
              left(const IAuthFailure.invalidEmailAndPasswordCombination());
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      registerWithFirebase: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
            _authRepo.registerWithFirebase);
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authRepo.signInWithEmailAndPassword,
        );
      },
      signInWithGooglePressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );
        Either<IAuthFailure, Unit>? failureOrSuccess;
        try {
          failureOrSuccess = await _authRepo.signInWithGoogle();
        } on PlatformException catch (e) {}

        yield state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(failureOrSuccess!),
        );
      },
    );
  }

  Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<IAuthFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
    })
        forwardedCall,
  ) async* {
    Either<IAuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    } else {
      failureOrSuccess =
          left(const IAuthFailure.invalidEmailAndPasswordCombination());
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      isAuth: failureOrSuccess.fold((l) => false, (r) => true),
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
