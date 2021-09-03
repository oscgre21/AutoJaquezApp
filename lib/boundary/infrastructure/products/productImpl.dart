import 'dart:convert';

import 'package:autojaquezapp/boundary/core/helpers/IRequestApi.dart';
import 'package:autojaquezapp/domain/auth/auth_failure.dart';
import 'package:autojaquezapp/domain/products/IProductFailure.dart';
import 'package:autojaquezapp/domain/products/IProductRepository.dart';
import 'package:dartz/dartz.dart';
import 'package:autojaquezapp/domain/products/entity/Product.dart';

class ProductImpl extends IProductRepository {
  IRequestApi _api;
  ProductImpl(this._api);
  @override
  Future<Either<IProductFailure, Product>> getProductById(
      {required String id}) {
    // TODO: implement getProductById

    throw UnimplementedError();
  }

  @override
  Future<Either<IProductFailure, List<Product>>> getProducts() {
    // TODO: implement getProducts
    throw UnimplementedError();
  }

  @override
  Future<Either<IProductFailure, List<Product>>> getServices() async {
    // TODO: implement getServices
    var result = await _api.get("Services/getServices", "");

    return result.fold(
      (l) => left(IProductFailure.productNotLoadFailure(l)),
      (r) {
        List decode = json.decode(r.dynamicResult) as List;
        var result = decode.map((e) => Product.fromJson(e)).toList();

        return right(result);
      },
    );
  }

  @override
  Future<Either<IProductFailure, Product>> getServicesById(
      {required String id}) {
    // TODO: implement getServicesById
    throw UnimplementedError();
  }
}
