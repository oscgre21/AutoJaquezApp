// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'register_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterBlocEventTearOff {
  const _$RegisterBlocEventTearOff();

  _Started started() {
    return const _Started();
  }

  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

  PhoneChanged phoneChanged(String phone) {
    return PhoneChanged(
      phone,
    );
  }

  NameChanged nameChanged(String name) {
    return NameChanged(
      name,
    );
  }

  Register register() {
    return const Register();
  }
}

/// @nodoc
const $RegisterBlocEvent = _$RegisterBlocEventTearOff();

/// @nodoc
mixin _$RegisterBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(Register value) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(Register value)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterBlocEventCopyWith<$Res> {
  factory $RegisterBlocEventCopyWith(
          RegisterBlocEvent value, $Res Function(RegisterBlocEvent) then) =
      _$RegisterBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterBlocEventCopyWithImpl<$Res>
    implements $RegisterBlocEventCopyWith<$Res> {
  _$RegisterBlocEventCopyWithImpl(this._value, this._then);

  final RegisterBlocEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterBlocEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$RegisterBlocEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'RegisterBlocEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() register,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? register,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(Register value) register,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(Register value)? register,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements RegisterBlocEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$RegisterBlocEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'RegisterBlocEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() register,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? register,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(Register value) register,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(Register value)? register,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements RegisterBlocEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneChangedCopyWith<$Res> {
  factory $PhoneChangedCopyWith(
          PhoneChanged value, $Res Function(PhoneChanged) then) =
      _$PhoneChangedCopyWithImpl<$Res>;
  $Res call({String phone});
}

/// @nodoc
class _$PhoneChangedCopyWithImpl<$Res>
    extends _$RegisterBlocEventCopyWithImpl<$Res>
    implements $PhoneChangedCopyWith<$Res> {
  _$PhoneChangedCopyWithImpl(
      PhoneChanged _value, $Res Function(PhoneChanged) _then)
      : super(_value, (v) => _then(v as PhoneChanged));

  @override
  PhoneChanged get _value => super._value as PhoneChanged;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(PhoneChanged(
      phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneChanged implements PhoneChanged {
  const _$PhoneChanged(this.phone);

  @override
  final String phone;

  @override
  String toString() {
    return 'RegisterBlocEvent.phoneChanged(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhoneChanged &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  $PhoneChangedCopyWith<PhoneChanged> get copyWith =>
      _$PhoneChangedCopyWithImpl<PhoneChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() register,
  }) {
    return phoneChanged(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? register,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(Register value) register,
  }) {
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(Register value)? register,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneChanged implements RegisterBlocEvent {
  const factory PhoneChanged(String phone) = _$PhoneChanged;

  String get phone => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhoneChangedCopyWith<PhoneChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$NameChangedCopyWithImpl<$Res>
    extends _$RegisterBlocEventCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(NameChanged(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChanged implements NameChanged {
  const _$NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'RegisterBlocEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() register,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? register,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(Register value) register,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(Register value)? register,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements RegisterBlocEvent {
  const factory NameChanged(String name) = _$NameChanged;

  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameChangedCopyWith<NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterCopyWith<$Res> {
  factory $RegisterCopyWith(Register value, $Res Function(Register) then) =
      _$RegisterCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterCopyWithImpl<$Res> extends _$RegisterBlocEventCopyWithImpl<$Res>
    implements $RegisterCopyWith<$Res> {
  _$RegisterCopyWithImpl(Register _value, $Res Function(Register) _then)
      : super(_value, (v) => _then(v as Register));

  @override
  Register get _value => super._value as Register;
}

/// @nodoc

class _$Register implements Register {
  const _$Register();

  @override
  String toString() {
    return 'RegisterBlocEvent.register()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Register);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String phone) phoneChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function() register,
  }) {
    return register();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String phone)? phoneChanged,
    TResult Function(String name)? nameChanged,
    TResult Function()? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(Register value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(Register value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class Register implements RegisterBlocEvent {
  const factory Register() = _$Register;
}

/// @nodoc
class _$RegisterBlocStateTearOff {
  const _$RegisterBlocStateTearOff();

  _RegisterBlocState call(
      {required EmailAddress emailAddress,
      required InputName name,
      required Password password,
      required PhoneNumber phone,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<IAuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _RegisterBlocState(
      emailAddress: emailAddress,
      name: name,
      password: password,
      phone: phone,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $RegisterBlocState = _$RegisterBlocStateTearOff();

/// @nodoc
mixin _$RegisterBlocState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  InputName get name => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  PhoneNumber get phone => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<IAuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterBlocStateCopyWith<RegisterBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterBlocStateCopyWith<$Res> {
  factory $RegisterBlocStateCopyWith(
          RegisterBlocState value, $Res Function(RegisterBlocState) then) =
      _$RegisterBlocStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      InputName name,
      Password password,
      PhoneNumber phone,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<IAuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$RegisterBlocStateCopyWithImpl<$Res>
    implements $RegisterBlocStateCopyWith<$Res> {
  _$RegisterBlocStateCopyWithImpl(this._value, this._then);

  final RegisterBlocState _value;
  // ignore: unused_field
  final $Res Function(RegisterBlocState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? name = freezed,
    Object? password = freezed,
    Object? phone = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as InputName,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<IAuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$RegisterBlocStateCopyWith<$Res>
    implements $RegisterBlocStateCopyWith<$Res> {
  factory _$RegisterBlocStateCopyWith(
          _RegisterBlocState value, $Res Function(_RegisterBlocState) then) =
      __$RegisterBlocStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      InputName name,
      Password password,
      PhoneNumber phone,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<IAuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$RegisterBlocStateCopyWithImpl<$Res>
    extends _$RegisterBlocStateCopyWithImpl<$Res>
    implements _$RegisterBlocStateCopyWith<$Res> {
  __$RegisterBlocStateCopyWithImpl(
      _RegisterBlocState _value, $Res Function(_RegisterBlocState) _then)
      : super(_value, (v) => _then(v as _RegisterBlocState));

  @override
  _RegisterBlocState get _value => super._value as _RegisterBlocState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? name = freezed,
    Object? password = freezed,
    Object? phone = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_RegisterBlocState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as InputName,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<IAuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_RegisterBlocState implements _RegisterBlocState {
  const _$_RegisterBlocState(
      {required this.emailAddress,
      required this.name,
      required this.password,
      required this.phone,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final EmailAddress emailAddress;
  @override
  final InputName name;
  @override
  final Password password;
  @override
  final PhoneNumber phone;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<IAuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'RegisterBlocState(emailAddress: $emailAddress, name: $name, password: $password, phone: $phone, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterBlocState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$RegisterBlocStateCopyWith<_RegisterBlocState> get copyWith =>
      __$RegisterBlocStateCopyWithImpl<_RegisterBlocState>(this, _$identity);
}

abstract class _RegisterBlocState implements RegisterBlocState {
  const factory _RegisterBlocState(
      {required EmailAddress emailAddress,
      required InputName name,
      required Password password,
      required PhoneNumber phone,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<IAuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_RegisterBlocState;

  @override
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  @override
  InputName get name => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  PhoneNumber get phone => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<IAuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterBlocStateCopyWith<_RegisterBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
