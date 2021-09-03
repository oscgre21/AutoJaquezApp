import 'package:autojaquezapp/domain/auth/auth_failure.dart';
import 'package:autojaquezapp/domain/products/entity/Product.dart';
import 'package:dartz/dartz.dart';

import 'IProductFailure.dart';

abstract class IProductRepository {
  Future<Either<IProductFailure, List<Product>>> getServices();
  Future<Either<IProductFailure, Product>> getServicesById(
      {required String id});
  Future<Either<IProductFailure, List<Product>>> getProducts();
  Future<Either<IProductFailure, Product>> getProductById({required String id});
}
