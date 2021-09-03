import 'dart:async';

import 'package:autojaquezapp/domain/auth/auth_failure.dart';
import 'package:autojaquezapp/domain/products/IProductFailure.dart';
import 'package:autojaquezapp/domain/products/IProductRepository.dart';
import 'package:autojaquezapp/domain/products/entity/Product.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  IProductRepository _product;
  ProductBloc(this._product) : super(ProductState.initial());

  @override
  Stream<ProductState> mapEventToState(
    ProductEvent event,
  ) async* {
    yield* event.map(
      getProduct: (_) async* {
        yield const ProductState.loadInProcess();
        var failureOrSuccess = await _product.getServices();

        yield ProductState.loadSuccessOrFail(failureOrSuccess);
      },
    );
  }
}
