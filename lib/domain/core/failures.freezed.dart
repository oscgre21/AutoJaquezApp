// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  InvalidEmail<T> invalidEmail<T>({required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  ShortPassword<T> shortPassword<T>({required T failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }

  EmailIsEmpty<T> emailIsEmpty<T>({required T failedValue}) {
    return EmailIsEmpty<T>(
      failedValue: failedValue,
    );
  }

  PasswordIsEmpty<T> passwordIsEmpty<T>({required T failedValue}) {
    return PasswordIsEmpty<T>(
      failedValue: failedValue,
    );
  }

  InvalidPhoneNumber<T> invalidPhoneNumber<T>({required T failedValue}) {
    return InvalidPhoneNumber<T>(
      failedValue: failedValue,
    );
  }

  ShortInputText<T> shortInputText<T>({required T failedValue}) {
    return ShortInputText<T>(
      failedValue: failedValue,
    );
  }

  InputIsEmpty<T> inputIsEmpty<T>({required T failedValue}) {
    return InputIsEmpty<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) emailIsEmpty,
    required TResult Function(T failedValue) passwordIsEmpty,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) shortInputText,
    required TResult Function(T failedValue) inputIsEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? emailIsEmpty,
    TResult Function(T failedValue)? passwordIsEmpty,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? shortInputText,
    TResult Function(T failedValue)? inputIsEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(EmailIsEmpty<T> value) emailIsEmpty,
    required TResult Function(PasswordIsEmpty<T> value) passwordIsEmpty,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(ShortInputText<T> value) shortInputText,
    required TResult Function(InputIsEmpty<T> value) inputIsEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(EmailIsEmpty<T> value)? emailIsEmpty,
    TResult Function(PasswordIsEmpty<T> value)? passwordIsEmpty,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(ShortInputText<T> value)? shortInputText,
    TResult Function(InputIsEmpty<T> value)? inputIsEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) emailIsEmpty,
    required TResult Function(T failedValue) passwordIsEmpty,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) shortInputText,
    required TResult Function(T failedValue) inputIsEmpty,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? emailIsEmpty,
    TResult Function(T failedValue)? passwordIsEmpty,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? shortInputText,
    TResult Function(T failedValue)? inputIsEmpty,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(EmailIsEmpty<T> value) emailIsEmpty,
    required TResult Function(PasswordIsEmpty<T> value) passwordIsEmpty,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(ShortInputText<T> value) shortInputText,
    required TResult Function(InputIsEmpty<T> value) inputIsEmpty,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(EmailIsEmpty<T> value)? emailIsEmpty,
    TResult Function(PasswordIsEmpty<T> value)? passwordIsEmpty,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(ShortInputText<T> value)? shortInputText,
    TResult Function(InputIsEmpty<T> value)? inputIsEmpty,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required T failedValue}) = _$InvalidEmail<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) emailIsEmpty,
    required TResult Function(T failedValue) passwordIsEmpty,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) shortInputText,
    required TResult Function(T failedValue) inputIsEmpty,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? emailIsEmpty,
    TResult Function(T failedValue)? passwordIsEmpty,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? shortInputText,
    TResult Function(T failedValue)? inputIsEmpty,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(EmailIsEmpty<T> value) emailIsEmpty,
    required TResult Function(PasswordIsEmpty<T> value) passwordIsEmpty,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(ShortInputText<T> value) shortInputText,
    required TResult Function(InputIsEmpty<T> value) inputIsEmpty,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(EmailIsEmpty<T> value)? emailIsEmpty,
    TResult Function(PasswordIsEmpty<T> value)? passwordIsEmpty,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(ShortInputText<T> value)? shortInputText,
    TResult Function(InputIsEmpty<T> value)? inputIsEmpty,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({required T failedValue}) = _$ShortPassword<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailIsEmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $EmailIsEmptyCopyWith(
          EmailIsEmpty<T> value, $Res Function(EmailIsEmpty<T>) then) =
      _$EmailIsEmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$EmailIsEmptyCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmailIsEmptyCopyWith<T, $Res> {
  _$EmailIsEmptyCopyWithImpl(
      EmailIsEmpty<T> _value, $Res Function(EmailIsEmpty<T>) _then)
      : super(_value, (v) => _then(v as EmailIsEmpty<T>));

  @override
  EmailIsEmpty<T> get _value => super._value as EmailIsEmpty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(EmailIsEmpty<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$EmailIsEmpty<T> implements EmailIsEmpty<T> {
  const _$EmailIsEmpty({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.emailIsEmpty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailIsEmpty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $EmailIsEmptyCopyWith<T, EmailIsEmpty<T>> get copyWith =>
      _$EmailIsEmptyCopyWithImpl<T, EmailIsEmpty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) emailIsEmpty,
    required TResult Function(T failedValue) passwordIsEmpty,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) shortInputText,
    required TResult Function(T failedValue) inputIsEmpty,
  }) {
    return emailIsEmpty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? emailIsEmpty,
    TResult Function(T failedValue)? passwordIsEmpty,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? shortInputText,
    TResult Function(T failedValue)? inputIsEmpty,
    required TResult orElse(),
  }) {
    if (emailIsEmpty != null) {
      return emailIsEmpty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(EmailIsEmpty<T> value) emailIsEmpty,
    required TResult Function(PasswordIsEmpty<T> value) passwordIsEmpty,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(ShortInputText<T> value) shortInputText,
    required TResult Function(InputIsEmpty<T> value) inputIsEmpty,
  }) {
    return emailIsEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(EmailIsEmpty<T> value)? emailIsEmpty,
    TResult Function(PasswordIsEmpty<T> value)? passwordIsEmpty,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(ShortInputText<T> value)? shortInputText,
    TResult Function(InputIsEmpty<T> value)? inputIsEmpty,
    required TResult orElse(),
  }) {
    if (emailIsEmpty != null) {
      return emailIsEmpty(this);
    }
    return orElse();
  }
}

abstract class EmailIsEmpty<T> implements ValueFailure<T> {
  const factory EmailIsEmpty({required T failedValue}) = _$EmailIsEmpty<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EmailIsEmptyCopyWith<T, EmailIsEmpty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordIsEmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $PasswordIsEmptyCopyWith(
          PasswordIsEmpty<T> value, $Res Function(PasswordIsEmpty<T>) then) =
      _$PasswordIsEmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$PasswordIsEmptyCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $PasswordIsEmptyCopyWith<T, $Res> {
  _$PasswordIsEmptyCopyWithImpl(
      PasswordIsEmpty<T> _value, $Res Function(PasswordIsEmpty<T>) _then)
      : super(_value, (v) => _then(v as PasswordIsEmpty<T>));

  @override
  PasswordIsEmpty<T> get _value => super._value as PasswordIsEmpty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(PasswordIsEmpty<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$PasswordIsEmpty<T> implements PasswordIsEmpty<T> {
  const _$PasswordIsEmpty({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.passwordIsEmpty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordIsEmpty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $PasswordIsEmptyCopyWith<T, PasswordIsEmpty<T>> get copyWith =>
      _$PasswordIsEmptyCopyWithImpl<T, PasswordIsEmpty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) emailIsEmpty,
    required TResult Function(T failedValue) passwordIsEmpty,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) shortInputText,
    required TResult Function(T failedValue) inputIsEmpty,
  }) {
    return passwordIsEmpty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? emailIsEmpty,
    TResult Function(T failedValue)? passwordIsEmpty,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? shortInputText,
    TResult Function(T failedValue)? inputIsEmpty,
    required TResult orElse(),
  }) {
    if (passwordIsEmpty != null) {
      return passwordIsEmpty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(EmailIsEmpty<T> value) emailIsEmpty,
    required TResult Function(PasswordIsEmpty<T> value) passwordIsEmpty,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(ShortInputText<T> value) shortInputText,
    required TResult Function(InputIsEmpty<T> value) inputIsEmpty,
  }) {
    return passwordIsEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(EmailIsEmpty<T> value)? emailIsEmpty,
    TResult Function(PasswordIsEmpty<T> value)? passwordIsEmpty,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(ShortInputText<T> value)? shortInputText,
    TResult Function(InputIsEmpty<T> value)? inputIsEmpty,
    required TResult orElse(),
  }) {
    if (passwordIsEmpty != null) {
      return passwordIsEmpty(this);
    }
    return orElse();
  }
}

abstract class PasswordIsEmpty<T> implements ValueFailure<T> {
  const factory PasswordIsEmpty({required T failedValue}) =
      _$PasswordIsEmpty<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $PasswordIsEmptyCopyWith<T, PasswordIsEmpty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidPhoneNumberCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidPhoneNumberCopyWith(InvalidPhoneNumber<T> value,
          $Res Function(InvalidPhoneNumber<T>) then) =
      _$InvalidPhoneNumberCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidPhoneNumberCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPhoneNumberCopyWith<T, $Res> {
  _$InvalidPhoneNumberCopyWithImpl(
      InvalidPhoneNumber<T> _value, $Res Function(InvalidPhoneNumber<T>) _then)
      : super(_value, (v) => _then(v as InvalidPhoneNumber<T>));

  @override
  InvalidPhoneNumber<T> get _value => super._value as InvalidPhoneNumber<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidPhoneNumber<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidPhoneNumber<T> implements InvalidPhoneNumber<T> {
  const _$InvalidPhoneNumber({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPhoneNumber(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPhoneNumber<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidPhoneNumberCopyWith<T, InvalidPhoneNumber<T>> get copyWith =>
      _$InvalidPhoneNumberCopyWithImpl<T, InvalidPhoneNumber<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) emailIsEmpty,
    required TResult Function(T failedValue) passwordIsEmpty,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) shortInputText,
    required TResult Function(T failedValue) inputIsEmpty,
  }) {
    return invalidPhoneNumber(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? emailIsEmpty,
    TResult Function(T failedValue)? passwordIsEmpty,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? shortInputText,
    TResult Function(T failedValue)? inputIsEmpty,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(EmailIsEmpty<T> value) emailIsEmpty,
    required TResult Function(PasswordIsEmpty<T> value) passwordIsEmpty,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(ShortInputText<T> value) shortInputText,
    required TResult Function(InputIsEmpty<T> value) inputIsEmpty,
  }) {
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(EmailIsEmpty<T> value)? emailIsEmpty,
    TResult Function(PasswordIsEmpty<T> value)? passwordIsEmpty,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(ShortInputText<T> value)? shortInputText,
    TResult Function(InputIsEmpty<T> value)? inputIsEmpty,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class InvalidPhoneNumber<T> implements ValueFailure<T> {
  const factory InvalidPhoneNumber({required T failedValue}) =
      _$InvalidPhoneNumber<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InvalidPhoneNumberCopyWith<T, InvalidPhoneNumber<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortInputTextCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $ShortInputTextCopyWith(
          ShortInputText<T> value, $Res Function(ShortInputText<T>) then) =
      _$ShortInputTextCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$ShortInputTextCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortInputTextCopyWith<T, $Res> {
  _$ShortInputTextCopyWithImpl(
      ShortInputText<T> _value, $Res Function(ShortInputText<T>) _then)
      : super(_value, (v) => _then(v as ShortInputText<T>));

  @override
  ShortInputText<T> get _value => super._value as ShortInputText<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(ShortInputText<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortInputText<T> implements ShortInputText<T> {
  const _$ShortInputText({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortInputText(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortInputText<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $ShortInputTextCopyWith<T, ShortInputText<T>> get copyWith =>
      _$ShortInputTextCopyWithImpl<T, ShortInputText<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) emailIsEmpty,
    required TResult Function(T failedValue) passwordIsEmpty,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) shortInputText,
    required TResult Function(T failedValue) inputIsEmpty,
  }) {
    return shortInputText(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? emailIsEmpty,
    TResult Function(T failedValue)? passwordIsEmpty,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? shortInputText,
    TResult Function(T failedValue)? inputIsEmpty,
    required TResult orElse(),
  }) {
    if (shortInputText != null) {
      return shortInputText(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(EmailIsEmpty<T> value) emailIsEmpty,
    required TResult Function(PasswordIsEmpty<T> value) passwordIsEmpty,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(ShortInputText<T> value) shortInputText,
    required TResult Function(InputIsEmpty<T> value) inputIsEmpty,
  }) {
    return shortInputText(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(EmailIsEmpty<T> value)? emailIsEmpty,
    TResult Function(PasswordIsEmpty<T> value)? passwordIsEmpty,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(ShortInputText<T> value)? shortInputText,
    TResult Function(InputIsEmpty<T> value)? inputIsEmpty,
    required TResult orElse(),
  }) {
    if (shortInputText != null) {
      return shortInputText(this);
    }
    return orElse();
  }
}

abstract class ShortInputText<T> implements ValueFailure<T> {
  const factory ShortInputText({required T failedValue}) = _$ShortInputText<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ShortInputTextCopyWith<T, ShortInputText<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InputIsEmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InputIsEmptyCopyWith(
          InputIsEmpty<T> value, $Res Function(InputIsEmpty<T>) then) =
      _$InputIsEmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InputIsEmptyCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InputIsEmptyCopyWith<T, $Res> {
  _$InputIsEmptyCopyWithImpl(
      InputIsEmpty<T> _value, $Res Function(InputIsEmpty<T>) _then)
      : super(_value, (v) => _then(v as InputIsEmpty<T>));

  @override
  InputIsEmpty<T> get _value => super._value as InputIsEmpty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InputIsEmpty<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InputIsEmpty<T> implements InputIsEmpty<T> {
  const _$InputIsEmpty({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.inputIsEmpty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InputIsEmpty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InputIsEmptyCopyWith<T, InputIsEmpty<T>> get copyWith =>
      _$InputIsEmptyCopyWithImpl<T, InputIsEmpty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) emailIsEmpty,
    required TResult Function(T failedValue) passwordIsEmpty,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) shortInputText,
    required TResult Function(T failedValue) inputIsEmpty,
  }) {
    return inputIsEmpty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? emailIsEmpty,
    TResult Function(T failedValue)? passwordIsEmpty,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? shortInputText,
    TResult Function(T failedValue)? inputIsEmpty,
    required TResult orElse(),
  }) {
    if (inputIsEmpty != null) {
      return inputIsEmpty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(EmailIsEmpty<T> value) emailIsEmpty,
    required TResult Function(PasswordIsEmpty<T> value) passwordIsEmpty,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(ShortInputText<T> value) shortInputText,
    required TResult Function(InputIsEmpty<T> value) inputIsEmpty,
  }) {
    return inputIsEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(EmailIsEmpty<T> value)? emailIsEmpty,
    TResult Function(PasswordIsEmpty<T> value)? passwordIsEmpty,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(ShortInputText<T> value)? shortInputText,
    TResult Function(InputIsEmpty<T> value)? inputIsEmpty,
    required TResult orElse(),
  }) {
    if (inputIsEmpty != null) {
      return inputIsEmpty(this);
    }
    return orElse();
  }
}

abstract class InputIsEmpty<T> implements ValueFailure<T> {
  const factory InputIsEmpty({required T failedValue}) = _$InputIsEmpty<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InputIsEmptyCopyWith<T, InputIsEmpty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
