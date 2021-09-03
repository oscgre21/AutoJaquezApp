// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'IRequestFailure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IRequestFailureTearOff {
  const _$IRequestFailureTearOff();

  _serverError serverError(ClientResponse response) {
    return _serverError(
      response,
    );
  }

  _unauthorized unauthorized(ClientResponse response) {
    return _unauthorized(
      response,
    );
  }
}

/// @nodoc
const $IRequestFailure = _$IRequestFailureTearOff();

/// @nodoc
mixin _$IRequestFailure {
  ClientResponse get response => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ClientResponse response) serverError,
    required TResult Function(ClientResponse response) unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ClientResponse response)? serverError,
    TResult Function(ClientResponse response)? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_serverError value) serverError,
    required TResult Function(_unauthorized value) unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_serverError value)? serverError,
    TResult Function(_unauthorized value)? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IRequestFailureCopyWith<IRequestFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IRequestFailureCopyWith<$Res> {
  factory $IRequestFailureCopyWith(
          IRequestFailure value, $Res Function(IRequestFailure) then) =
      _$IRequestFailureCopyWithImpl<$Res>;
  $Res call({ClientResponse response});
}

/// @nodoc
class _$IRequestFailureCopyWithImpl<$Res>
    implements $IRequestFailureCopyWith<$Res> {
  _$IRequestFailureCopyWithImpl(this._value, this._then);

  final IRequestFailure _value;
  // ignore: unused_field
  final $Res Function(IRequestFailure) _then;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ClientResponse,
    ));
  }
}

/// @nodoc
abstract class _$serverErrorCopyWith<$Res>
    implements $IRequestFailureCopyWith<$Res> {
  factory _$serverErrorCopyWith(
          _serverError value, $Res Function(_serverError) then) =
      __$serverErrorCopyWithImpl<$Res>;
  @override
  $Res call({ClientResponse response});
}

/// @nodoc
class __$serverErrorCopyWithImpl<$Res>
    extends _$IRequestFailureCopyWithImpl<$Res>
    implements _$serverErrorCopyWith<$Res> {
  __$serverErrorCopyWithImpl(
      _serverError _value, $Res Function(_serverError) _then)
      : super(_value, (v) => _then(v as _serverError));

  @override
  _serverError get _value => super._value as _serverError;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_serverError(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ClientResponse,
    ));
  }
}

/// @nodoc

class _$_serverError implements _serverError {
  const _$_serverError(this.response);

  @override
  final ClientResponse response;

  @override
  String toString() {
    return 'IRequestFailure.serverError(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _serverError &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$serverErrorCopyWith<_serverError> get copyWith =>
      __$serverErrorCopyWithImpl<_serverError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ClientResponse response) serverError,
    required TResult Function(ClientResponse response) unauthorized,
  }) {
    return serverError(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ClientResponse response)? serverError,
    TResult Function(ClientResponse response)? unauthorized,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_serverError value) serverError,
    required TResult Function(_unauthorized value) unauthorized,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_serverError value)? serverError,
    TResult Function(_unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _serverError implements IRequestFailure {
  const factory _serverError(ClientResponse response) = _$_serverError;

  @override
  ClientResponse get response => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$serverErrorCopyWith<_serverError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$unauthorizedCopyWith<$Res>
    implements $IRequestFailureCopyWith<$Res> {
  factory _$unauthorizedCopyWith(
          _unauthorized value, $Res Function(_unauthorized) then) =
      __$unauthorizedCopyWithImpl<$Res>;
  @override
  $Res call({ClientResponse response});
}

/// @nodoc
class __$unauthorizedCopyWithImpl<$Res>
    extends _$IRequestFailureCopyWithImpl<$Res>
    implements _$unauthorizedCopyWith<$Res> {
  __$unauthorizedCopyWithImpl(
      _unauthorized _value, $Res Function(_unauthorized) _then)
      : super(_value, (v) => _then(v as _unauthorized));

  @override
  _unauthorized get _value => super._value as _unauthorized;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_unauthorized(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ClientResponse,
    ));
  }
}

/// @nodoc

class _$_unauthorized implements _unauthorized {
  const _$_unauthorized(this.response);

  @override
  final ClientResponse response;

  @override
  String toString() {
    return 'IRequestFailure.unauthorized(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _unauthorized &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$unauthorizedCopyWith<_unauthorized> get copyWith =>
      __$unauthorizedCopyWithImpl<_unauthorized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ClientResponse response) serverError,
    required TResult Function(ClientResponse response) unauthorized,
  }) {
    return unauthorized(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ClientResponse response)? serverError,
    TResult Function(ClientResponse response)? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_serverError value) serverError,
    required TResult Function(_unauthorized value) unauthorized,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_serverError value)? serverError,
    TResult Function(_unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _unauthorized implements IRequestFailure {
  const factory _unauthorized(ClientResponse response) = _$_unauthorized;

  @override
  ClientResponse get response => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$unauthorizedCopyWith<_unauthorized> get copyWith =>
      throw _privateConstructorUsedError;
}
