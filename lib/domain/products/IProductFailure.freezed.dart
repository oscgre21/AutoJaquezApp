// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'IProductFailure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IProductFailureTearOff {
  const _$IProductFailureTearOff();

  _productNotLoadFailure productNotLoadFailure(IRequestFailure response) {
    return _productNotLoadFailure(
      response,
    );
  }
}

/// @nodoc
const $IProductFailure = _$IProductFailureTearOff();

/// @nodoc
mixin _$IProductFailure {
  IRequestFailure get response => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IRequestFailure response) productNotLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IRequestFailure response)? productNotLoadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_productNotLoadFailure value)
        productNotLoadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_productNotLoadFailure value)? productNotLoadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IProductFailureCopyWith<IProductFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IProductFailureCopyWith<$Res> {
  factory $IProductFailureCopyWith(
          IProductFailure value, $Res Function(IProductFailure) then) =
      _$IProductFailureCopyWithImpl<$Res>;
  $Res call({IRequestFailure response});

  $IRequestFailureCopyWith<$Res> get response;
}

/// @nodoc
class _$IProductFailureCopyWithImpl<$Res>
    implements $IProductFailureCopyWith<$Res> {
  _$IProductFailureCopyWithImpl(this._value, this._then);

  final IProductFailure _value;
  // ignore: unused_field
  final $Res Function(IProductFailure) _then;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as IRequestFailure,
    ));
  }

  @override
  $IRequestFailureCopyWith<$Res> get response {
    return $IRequestFailureCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc
abstract class _$productNotLoadFailureCopyWith<$Res>
    implements $IProductFailureCopyWith<$Res> {
  factory _$productNotLoadFailureCopyWith(_productNotLoadFailure value,
          $Res Function(_productNotLoadFailure) then) =
      __$productNotLoadFailureCopyWithImpl<$Res>;
  @override
  $Res call({IRequestFailure response});

  @override
  $IRequestFailureCopyWith<$Res> get response;
}

/// @nodoc
class __$productNotLoadFailureCopyWithImpl<$Res>
    extends _$IProductFailureCopyWithImpl<$Res>
    implements _$productNotLoadFailureCopyWith<$Res> {
  __$productNotLoadFailureCopyWithImpl(_productNotLoadFailure _value,
      $Res Function(_productNotLoadFailure) _then)
      : super(_value, (v) => _then(v as _productNotLoadFailure));

  @override
  _productNotLoadFailure get _value => super._value as _productNotLoadFailure;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_productNotLoadFailure(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as IRequestFailure,
    ));
  }
}

/// @nodoc

class _$_productNotLoadFailure implements _productNotLoadFailure {
  const _$_productNotLoadFailure(this.response);

  @override
  final IRequestFailure response;

  @override
  String toString() {
    return 'IProductFailure.productNotLoadFailure(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _productNotLoadFailure &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(response);

  @JsonKey(ignore: true)
  @override
  _$productNotLoadFailureCopyWith<_productNotLoadFailure> get copyWith =>
      __$productNotLoadFailureCopyWithImpl<_productNotLoadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(IRequestFailure response) productNotLoadFailure,
  }) {
    return productNotLoadFailure(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(IRequestFailure response)? productNotLoadFailure,
    required TResult orElse(),
  }) {
    if (productNotLoadFailure != null) {
      return productNotLoadFailure(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_productNotLoadFailure value)
        productNotLoadFailure,
  }) {
    return productNotLoadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_productNotLoadFailure value)? productNotLoadFailure,
    required TResult orElse(),
  }) {
    if (productNotLoadFailure != null) {
      return productNotLoadFailure(this);
    }
    return orElse();
  }
}

abstract class _productNotLoadFailure implements IProductFailure {
  const factory _productNotLoadFailure(IRequestFailure response) =
      _$_productNotLoadFailure;

  @override
  IRequestFailure get response => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$productNotLoadFailureCopyWith<_productNotLoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
