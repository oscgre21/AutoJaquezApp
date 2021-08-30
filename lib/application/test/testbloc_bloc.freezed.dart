// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'testbloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TestblocEventTearOff {
  const _$TestblocEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $TestblocEvent = _$TestblocEventTearOff();

/// @nodoc
mixin _$TestblocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestblocEventCopyWith<$Res> {
  factory $TestblocEventCopyWith(
          TestblocEvent value, $Res Function(TestblocEvent) then) =
      _$TestblocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TestblocEventCopyWithImpl<$Res>
    implements $TestblocEventCopyWith<$Res> {
  _$TestblocEventCopyWithImpl(this._value, this._then);

  final TestblocEvent _value;
  // ignore: unused_field
  final $Res Function(TestblocEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$TestblocEventCopyWithImpl<$Res>
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
    return 'TestblocEvent.started()';
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
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TestblocEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$TestblocStateTearOff {
  const _$TestblocStateTearOff();

  _TestblocState call({required bool isAuth}) {
    return _TestblocState(
      isAuth: isAuth,
    );
  }

  Authenticated authenticated() {
    return const Authenticated();
  }

  Unuthenticated unauthenticated() {
    return const Unuthenticated();
  }
}

/// @nodoc
const $TestblocState = _$TestblocStateTearOff();

/// @nodoc
mixin _$TestblocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool isAuth) $default, {
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool isAuth)? $default, {
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestblocState value) $default, {
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unuthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestblocState value)? $default, {
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unuthenticated value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestblocStateCopyWith<$Res> {
  factory $TestblocStateCopyWith(
          TestblocState value, $Res Function(TestblocState) then) =
      _$TestblocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TestblocStateCopyWithImpl<$Res>
    implements $TestblocStateCopyWith<$Res> {
  _$TestblocStateCopyWithImpl(this._value, this._then);

  final TestblocState _value;
  // ignore: unused_field
  final $Res Function(TestblocState) _then;
}

/// @nodoc
abstract class _$TestblocStateCopyWith<$Res> {
  factory _$TestblocStateCopyWith(
          _TestblocState value, $Res Function(_TestblocState) then) =
      __$TestblocStateCopyWithImpl<$Res>;
  $Res call({bool isAuth});
}

/// @nodoc
class __$TestblocStateCopyWithImpl<$Res>
    extends _$TestblocStateCopyWithImpl<$Res>
    implements _$TestblocStateCopyWith<$Res> {
  __$TestblocStateCopyWithImpl(
      _TestblocState _value, $Res Function(_TestblocState) _then)
      : super(_value, (v) => _then(v as _TestblocState));

  @override
  _TestblocState get _value => super._value as _TestblocState;

  @override
  $Res call({
    Object? isAuth = freezed,
  }) {
    return _then(_TestblocState(
      isAuth: isAuth == freezed
          ? _value.isAuth
          : isAuth // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TestblocState implements _TestblocState {
  const _$_TestblocState({required this.isAuth});

  @override
  final bool isAuth;

  @override
  String toString() {
    return 'TestblocState(isAuth: $isAuth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TestblocState &&
            (identical(other.isAuth, isAuth) ||
                const DeepCollectionEquality().equals(other.isAuth, isAuth)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isAuth);

  @JsonKey(ignore: true)
  @override
  _$TestblocStateCopyWith<_TestblocState> get copyWith =>
      __$TestblocStateCopyWithImpl<_TestblocState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool isAuth) $default, {
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) {
    return $default(isAuth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool isAuth)? $default, {
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(isAuth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestblocState value) $default, {
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unuthenticated value) unauthenticated,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestblocState value)? $default, {
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unuthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _TestblocState implements TestblocState {
  const factory _TestblocState({required bool isAuth}) = _$_TestblocState;

  bool get isAuth => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TestblocStateCopyWith<_TestblocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res>
    extends _$TestblocStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;
}

/// @nodoc

class _$Authenticated implements Authenticated {
  const _$Authenticated();

  @override
  String toString() {
    return 'TestblocState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool isAuth) $default, {
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool isAuth)? $default, {
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestblocState value) $default, {
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unuthenticated value) unauthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestblocState value)? $default, {
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unuthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements TestblocState {
  const factory Authenticated() = _$Authenticated;
}

/// @nodoc
abstract class $UnuthenticatedCopyWith<$Res> {
  factory $UnuthenticatedCopyWith(
          Unuthenticated value, $Res Function(Unuthenticated) then) =
      _$UnuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnuthenticatedCopyWithImpl<$Res>
    extends _$TestblocStateCopyWithImpl<$Res>
    implements $UnuthenticatedCopyWith<$Res> {
  _$UnuthenticatedCopyWithImpl(
      Unuthenticated _value, $Res Function(Unuthenticated) _then)
      : super(_value, (v) => _then(v as Unuthenticated));

  @override
  Unuthenticated get _value => super._value as Unuthenticated;
}

/// @nodoc

class _$Unuthenticated implements Unuthenticated {
  const _$Unuthenticated();

  @override
  String toString() {
    return 'TestblocState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool isAuth) $default, {
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool isAuth)? $default, {
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TestblocState value) $default, {
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(Unuthenticated value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TestblocState value)? $default, {
    TResult Function(Authenticated value)? authenticated,
    TResult Function(Unuthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unuthenticated implements TestblocState {
  const factory Unuthenticated() = _$Unuthenticated;
}
