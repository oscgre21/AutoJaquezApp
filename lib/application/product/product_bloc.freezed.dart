// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductEventTearOff {
  const _$ProductEventTearOff();

  _getProduct getProduct() {
    return const _getProduct();
  }
}

/// @nodoc
const $ProductEvent = _$ProductEventTearOff();

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getProduct value) getProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getProduct value)? getProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res> implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  final ProductEvent _value;
  // ignore: unused_field
  final $Res Function(ProductEvent) _then;
}

/// @nodoc
abstract class _$getProductCopyWith<$Res> {
  factory _$getProductCopyWith(
          _getProduct value, $Res Function(_getProduct) then) =
      __$getProductCopyWithImpl<$Res>;
}

/// @nodoc
class __$getProductCopyWithImpl<$Res> extends _$ProductEventCopyWithImpl<$Res>
    implements _$getProductCopyWith<$Res> {
  __$getProductCopyWithImpl(
      _getProduct _value, $Res Function(_getProduct) _then)
      : super(_value, (v) => _then(v as _getProduct));

  @override
  _getProduct get _value => super._value as _getProduct;
}

/// @nodoc

class _$_getProduct implements _getProduct {
  const _$_getProduct();

  @override
  String toString() {
    return 'ProductEvent.getProduct()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _getProduct);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProduct,
  }) {
    return getProduct();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProduct,
    required TResult orElse(),
  }) {
    if (getProduct != null) {
      return getProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getProduct value) getProduct,
  }) {
    return getProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getProduct value)? getProduct,
    required TResult orElse(),
  }) {
    if (getProduct != null) {
      return getProduct(this);
    }
    return orElse();
  }
}

abstract class _getProduct implements ProductEvent {
  const factory _getProduct() = _$_getProduct;
}

/// @nodoc
class _$ProductStateTearOff {
  const _$ProductStateTearOff();

  _ProductState call() {
    return const _ProductState();
  }

  _loadInProcess loadInProcess() {
    return const _loadInProcess();
  }

  loadSuccess loadSuccessOrFail(Either<IProductFailure, List<Product>> data) {
    return loadSuccess(
      data,
    );
  }
}

/// @nodoc
const $ProductState = _$ProductStateTearOff();

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loadInProcess,
    required TResult Function(Either<IProductFailure, List<Product>> data)
        loadSuccessOrFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loadInProcess,
    TResult Function(Either<IProductFailure, List<Product>> data)?
        loadSuccessOrFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProductState value) $default, {
    required TResult Function(_loadInProcess value) loadInProcess,
    required TResult Function(loadSuccess value) loadSuccessOrFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProductState value)? $default, {
    TResult Function(_loadInProcess value)? loadInProcess,
    TResult Function(loadSuccess value)? loadSuccessOrFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res> implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  final ProductState _value;
  // ignore: unused_field
  final $Res Function(ProductState) _then;
}

/// @nodoc
abstract class _$ProductStateCopyWith<$Res> {
  factory _$ProductStateCopyWith(
          _ProductState value, $Res Function(_ProductState) then) =
      __$ProductStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ProductStateCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
    implements _$ProductStateCopyWith<$Res> {
  __$ProductStateCopyWithImpl(
      _ProductState _value, $Res Function(_ProductState) _then)
      : super(_value, (v) => _then(v as _ProductState));

  @override
  _ProductState get _value => super._value as _ProductState;
}

/// @nodoc

class _$_ProductState implements _ProductState {
  const _$_ProductState();

  @override
  String toString() {
    return 'ProductState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ProductState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loadInProcess,
    required TResult Function(Either<IProductFailure, List<Product>> data)
        loadSuccessOrFail,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loadInProcess,
    TResult Function(Either<IProductFailure, List<Product>> data)?
        loadSuccessOrFail,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProductState value) $default, {
    required TResult Function(_loadInProcess value) loadInProcess,
    required TResult Function(loadSuccess value) loadSuccessOrFail,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProductState value)? $default, {
    TResult Function(_loadInProcess value)? loadInProcess,
    TResult Function(loadSuccess value)? loadSuccessOrFail,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ProductState implements ProductState {
  const factory _ProductState() = _$_ProductState;
}

/// @nodoc
abstract class _$loadInProcessCopyWith<$Res> {
  factory _$loadInProcessCopyWith(
          _loadInProcess value, $Res Function(_loadInProcess) then) =
      __$loadInProcessCopyWithImpl<$Res>;
}

/// @nodoc
class __$loadInProcessCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res>
    implements _$loadInProcessCopyWith<$Res> {
  __$loadInProcessCopyWithImpl(
      _loadInProcess _value, $Res Function(_loadInProcess) _then)
      : super(_value, (v) => _then(v as _loadInProcess));

  @override
  _loadInProcess get _value => super._value as _loadInProcess;
}

/// @nodoc

class _$_loadInProcess implements _loadInProcess {
  const _$_loadInProcess();

  @override
  String toString() {
    return 'ProductState.loadInProcess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _loadInProcess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loadInProcess,
    required TResult Function(Either<IProductFailure, List<Product>> data)
        loadSuccessOrFail,
  }) {
    return loadInProcess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loadInProcess,
    TResult Function(Either<IProductFailure, List<Product>> data)?
        loadSuccessOrFail,
    required TResult orElse(),
  }) {
    if (loadInProcess != null) {
      return loadInProcess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProductState value) $default, {
    required TResult Function(_loadInProcess value) loadInProcess,
    required TResult Function(loadSuccess value) loadSuccessOrFail,
  }) {
    return loadInProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProductState value)? $default, {
    TResult Function(_loadInProcess value)? loadInProcess,
    TResult Function(loadSuccess value)? loadSuccessOrFail,
    required TResult orElse(),
  }) {
    if (loadInProcess != null) {
      return loadInProcess(this);
    }
    return orElse();
  }
}

abstract class _loadInProcess implements ProductState {
  const factory _loadInProcess() = _$_loadInProcess;
}

/// @nodoc
abstract class $loadSuccessCopyWith<$Res> {
  factory $loadSuccessCopyWith(
          loadSuccess value, $Res Function(loadSuccess) then) =
      _$loadSuccessCopyWithImpl<$Res>;
  $Res call({Either<IProductFailure, List<Product>> data});
}

/// @nodoc
class _$loadSuccessCopyWithImpl<$Res> extends _$ProductStateCopyWithImpl<$Res>
    implements $loadSuccessCopyWith<$Res> {
  _$loadSuccessCopyWithImpl(
      loadSuccess _value, $Res Function(loadSuccess) _then)
      : super(_value, (v) => _then(v as loadSuccess));

  @override
  loadSuccess get _value => super._value as loadSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(loadSuccess(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Either<IProductFailure, List<Product>>,
    ));
  }
}

/// @nodoc

class _$loadSuccess implements loadSuccess {
  const _$loadSuccess(this.data);

  @override
  final Either<IProductFailure, List<Product>> data;

  @override
  String toString() {
    return 'ProductState.loadSuccessOrFail(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is loadSuccess &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $loadSuccessCopyWith<loadSuccess> get copyWith =>
      _$loadSuccessCopyWithImpl<loadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loadInProcess,
    required TResult Function(Either<IProductFailure, List<Product>> data)
        loadSuccessOrFail,
  }) {
    return loadSuccessOrFail(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loadInProcess,
    TResult Function(Either<IProductFailure, List<Product>> data)?
        loadSuccessOrFail,
    required TResult orElse(),
  }) {
    if (loadSuccessOrFail != null) {
      return loadSuccessOrFail(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProductState value) $default, {
    required TResult Function(_loadInProcess value) loadInProcess,
    required TResult Function(loadSuccess value) loadSuccessOrFail,
  }) {
    return loadSuccessOrFail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProductState value)? $default, {
    TResult Function(_loadInProcess value)? loadInProcess,
    TResult Function(loadSuccess value)? loadSuccessOrFail,
    required TResult orElse(),
  }) {
    if (loadSuccessOrFail != null) {
      return loadSuccessOrFail(this);
    }
    return orElse();
  }
}

abstract class loadSuccess implements ProductState {
  const factory loadSuccess(Either<IProductFailure, List<Product>> data) =
      _$loadSuccess;

  Either<IProductFailure, List<Product>> get data =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $loadSuccessCopyWith<loadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
