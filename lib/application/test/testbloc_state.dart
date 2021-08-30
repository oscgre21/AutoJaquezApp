part of 'testbloc_bloc.dart';

@freezed
class TestblocState with _$TestblocState {
  const factory TestblocState({
    required bool isAuth,
  }) = _TestblocState;

  const factory TestblocState.authenticated() = Authenticated;
  const factory TestblocState.unauthenticated() = Unuthenticated;

  factory TestblocState.initial() => TestblocState(
        isAuth: false,
      );
}
