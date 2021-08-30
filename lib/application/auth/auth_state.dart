part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState() = _AuthState;

  const factory AuthState.authenticated() = Authenticated;
  const factory AuthState.unauthenticated() = Unuthenticated;

  factory AuthState.initial() => AuthState();
}
