part of 'testbloc_bloc.dart';

@freezed
class TestblocEvent with _$TestblocEvent {
  const factory TestblocEvent.started() = _Started;
}