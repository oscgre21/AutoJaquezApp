import 'dart:async';

import 'package:autojaquezapp/domain/auth/i_auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _autFacade;
  AuthBloc(this._autFacade) : super(AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequest: (e) async* {
        final useroption = await _autFacade.getSignedInUser();
        yield useroption.fold(
          () => const AuthState.unauthenticated(),
          (_) => const AuthState.authenticated(),
        );
      },
      signedOut: (e) async* {
        await _autFacade.signOut();
        yield const AuthState.unauthenticated();
      },
    );
  }
}
