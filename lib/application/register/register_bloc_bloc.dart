import 'dart:async';

import 'package:autojaquezapp/boundary/core/helpers/IRequestApi.dart';
import 'package:autojaquezapp/domain/auth/auth_failure.dart';
import 'package:autojaquezapp/domain/auth/i_auth_repository.dart';
import 'package:autojaquezapp/domain/auth/value_objects.dart';
import 'package:autojaquezapp/domain/core/value_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_bloc_bloc.freezed.dart';
part 'register_bloc_event.dart';
part 'register_bloc_state.dart';

class RegisterBlocBloc extends Bloc<RegisterBlocEvent, RegisterBlocState> {
  IRequestApi _request;
  IAuthRepository _register;
  RegisterBlocBloc(this._request, this._register)
      : super(RegisterBlocState.initial());

  @override
  Stream<RegisterBlocState> mapEventToState(
    RegisterBlocEvent event,
  ) async* {
    yield* event.map(
      started: (_) async* {},
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      phoneChanged: (e) async* {
        yield state.copyWith(
          phone: PhoneNumber(e.phone),
          authFailureOrSuccessOption: none(),
        );
      },
      nameChanged: (e) async* {
        yield state.copyWith(
          name: InputName(e.name),
          authFailureOrSuccessOption: none(),
        );
      },
      register: (_) async* {
        _register.registerWithEmailAndPassword(
          emailAddress: state.emailAddress,
          name_lastname: state.name,
          password: state.password,
          phone_number: state.phone,
        );
      },
    );
  }
}
