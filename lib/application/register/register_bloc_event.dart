part of 'register_bloc_bloc.dart';

@freezed
class RegisterBlocEvent with _$RegisterBlocEvent {
  const factory RegisterBlocEvent.started() = _Started;
  const factory RegisterBlocEvent.emailChanged(String emailStr) = EmailChanged;
  const factory RegisterBlocEvent.phoneChanged(String phone) = PhoneChanged;
  const factory RegisterBlocEvent.nameChanged(String name) = NameChanged;
  const factory RegisterBlocEvent.register() = Register;
}
