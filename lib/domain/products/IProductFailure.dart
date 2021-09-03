import 'package:autojaquezapp/boundary/core/helpers/IRequestFailure.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'IProductFailure.freezed.dart';

@freezed
abstract class IProductFailure with _$IProductFailure {
  const factory IProductFailure.productNotLoadFailure(
      IRequestFailure response) = _productNotLoadFailure;
}
