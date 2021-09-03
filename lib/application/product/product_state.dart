part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  factory ProductState.initial() => ProductState();

  const factory ProductState() = _ProductState;
  const factory ProductState.loadInProcess() = _loadInProcess;

  const factory ProductState.loadSuccessOrFail(
      Either<IProductFailure, List<Product>> data) = loadSuccess;
}
