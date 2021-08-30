import 'dart:async';

import 'package:autojaquezapp/domain/auth/i_auth_repository.dart';
import 'package:autojaquezapp/domain/auth/value_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthRepository _autFacade;
  AuthBloc(this._autFacade) : super(AuthState.initial());

  AuthState get initialState => AuthState.initial();

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequest: (e) async* {
        final useroption = await _autFacade.getSignedInUser();
        print("authCheckRequest step");
        yield useroption.fold(
          () => const AuthState.unauthenticated(),
          (_) => const AuthState.authenticated(),
        );

        // yield state.copyWith(isAuth);
      },
      signedOut: (e) async* {
        print("SignedOut step");
        await _autFacade.signOut();
        yield AuthState.unauthenticated();
      },
    );
  }
}
